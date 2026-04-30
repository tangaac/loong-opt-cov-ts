#!/usr/bin/env python3
"""
LoongArch LLVM PR optimization analysis tool
Analyzes assembly changes before and after PR optimizations
"""

import argparse
import os
import json
import subprocess
import shutil
import re
import datetime
import pickle
from pathlib import Path


def run_command(cmd, cwd=None, capture_output=True):
    """Run command and return result"""
    try:
        result = subprocess.run(
            cmd,
            cwd=cwd,
            capture_output=capture_output,
            text=True,
            check=True
        )
        return result
    except subprocess.CalledProcessError as e:
        print(f"Command failed: {' '.join(cmd)}")
        print(f"Error: {e}")
        if e.stdout:
            print(f"Output: {e.stdout}")
        if e.stderr:
            print(f"Error output: {e.stderr}")
        raise


class LoongArchPRAnalyzer:
    def __init__(self, config_path="config.json"):
        self.config = self.load_config(config_path)
        self.work_dir = Path(self.config.get("work_dir", "./temp_work"))
        self.llvm_repo = Path(self.config.get("llvm_repo", "./llvm-project"))
        self.pr_analysis_dir = Path(self.config.get("pr_analysis_dir", "./pr-analysis"))
        self.current_pr_id = None
        self.state_file = Path(self.config.get("state_file", "./analysis_state.json"))
        self.analysis_steps = [
            "sync_repos",
            "fetch_pr_code",
            "build_clang",
            "build_before_optimization",
            "build_after_optimization",
            "create_analysis_pr"
        ]
        self.current_step = 0

    def load_config(self, config_path):
        """Load configuration file"""
        try:
            with open(config_path, 'r', encoding='utf-8') as f:
                return json.load(f)
        except FileNotFoundError:
            print(f"Config file {config_path} not found, using default config")
            return self.get_default_config()

    def save_state(self, step, data=None):
        """Save analysis state for resuming"""
        state = {
            "pr_id": self.current_pr_id,
            "current_step": step,
            "completed_steps": [],
            "last_successful_step": step - 1,
            "data": data or {},
            "timestamp": str(datetime.datetime.now())
        }

        # Mark previous steps as completed
        for i in range(step):
            if i not in state["completed_steps"]:
                state["completed_steps"].append(i)

        try:
            with open(self.state_file, 'w', encoding='utf-8') as f:
                json.dump(state, f, indent=2, ensure_ascii=False)
            print(f"✅ State saved at step {step}")
        except Exception as e:
            print(f"⚠️ Failed to save state: {e}")

    def load_state(self):
        """Load analysis state for resuming"""
        if not self.state_file.exists():
            return 0

        try:
            with open(self.state_file, 'r', encoding='utf-8') as f:
                state = json.load(f)

            # Check if this is for the same PR
            if state.get("pr_id") == self.current_pr_id:
                print(f"📋 Found saved state for PR #{self.current_pr_id}")
                print(f"   Last successful step: {state.get('last_successful_step', -1)}")
                print(f"   Completed steps: {state.get('completed_steps', [])}")
                self.current_step = state.get("current_step", 0)
                return self.current_step
            else:
                # Different PR, reset state
                print(f"🔄 Different PR, starting fresh analysis")
                return 0
        except Exception as e:
            print(f"⚠️ Failed to load state: {e}")
            return 0

    def clear_state(self):
        """Clear saved state"""
        if self.state_file.exists():
            try:
                self.state_file.unlink()
                print("🧹 State cleared")
            except Exception as e:
                print(f"⚠️ Failed to clear state: {e}")

    def get_default_config(self):
        """Get default configuration"""
        return {
            "work_dir": "./temp_work",
            "llvm_repo": "./llvm-project",
            "pr_analysis_dir": "./pr-analysis",
            "test_suite_dir": "./llvm-test-suite",
            "build_type": "Release",
            "parallel_jobs": 4,
            "clang_build_dir": "./build",
            "github_remote": "origin",
            "github_base_branch": "master",
            "github_remote_url": "git@github.com:your-org/loongarch-opt-analysis.git",
            "state_file": "./analysis_state.json"
        }

    def sync_repos(self):
        """Sync source code repositories"""
        print("Syncing source code repositories...")

        original_dir = os.getcwd()

        try:
            # Sync llvm-project
            llvm_repo = Path(self.config["llvm_repo"])
            if llvm_repo.exists():
                os.chdir(llvm_repo)
                print("Updating llvm-project...")
                subprocess.run(["git", "fetch", self.config["github_remote"]], check=True)
                subprocess.run(["git", "reset", "--hard", f"{self.config['github_remote']}/master"], check=True)
                print("llvm-project synced")
            else:
                print(f"llvm-project does not exist: {llvm_repo}")
                return False

            # Sync llvm-test-suite
            test_suite = Path(self.config["test_suite_dir"])
            if test_suite.exists():
                os.chdir(test_suite)
                print("Updating llvm-test-suite...")
                subprocess.run(["git", "fetch", "origin"], check=True)
                subprocess.run(["git", "reset", "--hard", "origin/master"], check=True)
                print("llvm-test-suite synced")
            else:
                print(f"llvm-test-suite does not exist: {test_suite}")
                return False

            # Update cache
            self.update_cache("sync", {
                "llvm_project_commit": self.get_git_commit(llvm_repo),
                "test_suite_commit": self.get_git_commit(test_suite)
            })

            # Save state
            self.save_state(1, {
                "llvm_project_commit": self.get_git_commit(llvm_repo),
                "test_suite_commit": self.get_git_commit(test_suite)
            })

            return True

        except subprocess.CalledProcessError as e:
            print(f"Sync source code failed: {e}")
            return False
        finally:
            os.chdir(original_dir)

    def get_git_commit(self, repo_path):
        """Get current commit hash of repository"""
        try:
            result = subprocess.run(["git", "rev-parse", "HEAD"],
                                  cwd=repo_path,
                                  capture_output=True,
                                  text=True,
                                  check=True)
            return result.stdout.strip()
        except:
            return None

    def fetch_pr_code(self, pr_id):
        """Fetch PR code and return base commit"""
        print(f"Fetching PR #{pr_id} code...")

        # Create work directory
        self.work_dir.mkdir(parents=True, exist_ok=True)

        # Switch to work directory
        original_dir = os.getcwd()
        os.chdir(self.work_dir)

        try:
            # Check if LLVM repository exists
            if not self.llvm_repo.exists():
                print(f"Error: LLVM repository does not exist: {self.llvm_repo}")
                print("Please ensure llvm-project repository is cloned in repos directory")
                return False, None

            # Check if test suite directory exists
            test_suite_path = Path(self.config["test_suite_dir"])
            if not test_suite_path.exists():
                print(f"Error: Test suite directory does not exist: {test_suite_path}")
                print("Please ensure llvm-test-suite repository is cloned in repos directory")
                return False, None

            # Get latest commit of master branch
            subprocess.run(["git", "fetch", self.config["github_remote"], "master"], check=True)
            master_commit = subprocess.run(["git", "rev-parse", f"{self.config['github_remote']}/master"],
                                        capture_output=True, text=True, check=True).stdout.strip()
            print(f"Master branch latest commit: {master_commit}")

            # Get PR branch
            pr_branch = f"pr-{pr_id}"
            subprocess.run(["git", "fetch", self.config["github_remote"], f"pull/{pr_id}/head:{pr_branch}"], check=True)

            # Get latest commit of PR branch
            pr_commit = subprocess.run(["git", "rev-parse", pr_branch],
                                    capture_output=True, text=True, check=True).stdout.strip()
            print(f"PR branch latest commit: {pr_commit}")

            # Calculate how many commits PR branch is ahead of master
            commit_count = subprocess.run([
                "git", "rev-list", "--count", f"{master_commit}..{pr_commit}"
            ], capture_output=True, text=True, check=True).stdout.strip()

            print(f"PR branch is ahead of master by {commit_count} commits")

            if int(commit_count) == 0:
                print("PR branch is not ahead of master, using master as baseline")
                # Switch to master branch
                subprocess.run(["git", "checkout", master_commit], check=True)
                # Save state
                self.save_state(2, {
                    "base_commit": master_commit,
                    "pr_commit": master_commit,
                    "pr_branch": "master"
                })
                return True, master_commit
            else:
                # Get the commit where PR branch started optimizing
                # If PR branch has N commits ahead of master, baseline is PR branch's Nth commit
                base_commit = subprocess.run([
                    "git", "rev-parse", f"{pr_commit}~{int(commit_count)-1}"
                ], capture_output=True, text=True, check=True).stdout.strip()
                print(f"Baseline commit (before optimization): {base_commit}")

                # Switch to PR branch
                subprocess.run(["git", "checkout", pr_branch], check=True)
                # Save state
                self.save_state(2, {
                    "base_commit": base_commit,
                    "pr_commit": pr_commit,
                    "pr_branch": pr_branch,
                    "commit_count": int(commit_count)
                })
                return True, base_commit

        except subprocess.CalledProcessError as e:
            print(f"Fetch PR code failed: {e}")
            return False, None
        finally:
            os.chdir(original_dir)

    def build_clang(self, build_dir="build"):
        """Build clang"""
        print("Building clang...")

        # Check cache first
        clang_path = Path(self.config["clang_build_dir"]) / "bin" / "clang"
        if clang_path.exists():
            print("📦 Clang already exists, skipping build")
            # Save state
            self.save_state(3, {
                "clang_built": True,
                "clang_path": str(clang_path)
            })
            return True

        build_path = Path(build_dir)
        build_path.mkdir(exist_ok=True)

        # Switch to build directory
        original_dir = os.getcwd()
        os.chdir(build_path)

        try:
            # Configure CMake with LoongArch-specific arguments
            cmake_cmd = [
                "cmake", "-G", "Ninja",
                "-DCMAKE_BUILD_TYPE=" + self.config["build_type"],
                "-DLLVM_ENABLE_PROJECTS=clang"
            ]

            # Add additional cmake args from config
            if "cmake_args" in self.config:
                cmake_cmd.extend(self.config["cmake_args"])

            # Add LLVM repo path
            cmake_cmd.append(str(self.llvm_repo))

            print(f"CMake command: {' '.join(cmake_cmd)}")

            # Configure CMake
            subprocess.run(cmake_cmd, check=True)

            # Build clang
            subprocess.run([
                "ninja", "clang"
            ], check=True)

            # Update cache
            self.update_cache("build", {
                "clang_built": True,
                "clang_path": str(clang_path)
            })

            # Save state
            self.save_state(3, {
                "clang_built": True,
                "clang_path": str(clang_path)
            })

            print("clang build completed")
            return True

        except subprocess.CalledProcessError as e:
            print(f"Build clang failed: {e}")
            return False
        finally:
            os.chdir(original_dir)

    def run_test_suite_at_commit(self, commit_hash, test_dir="SingleSource/Benchmarks"):
        """Run test suite at specified commit and get assembly output"""
        print(f"Running test suite at commit {commit_hash[:8]}...")

        results = {}
        test_path = Path(self.config["test_suite_dir"]) / test_dir

        if not test_path.exists():
            print(f"Test directory {test_path} does not exist")
            return results

        # Get clang path
        clang_path = Path(self.config["clang_build_dir"]) / "bin" / "clang"
        if not clang_path.exists():
            print(f"clang not found: {clang_path}")
            return results

        # Switch to specified commit
        original_dir = os.getcwd()
        os.chdir(self.work_dir)

        try:
            subprocess.run(["git", "checkout", commit_hash], check=True)

            # Iterate through test files
            for c_file in test_path.glob("*.c"):
                print(f"Compiling {c_file}...")

                # Generate assembly file
                asm_file = c_file.with_suffix(".s")
                subprocess.run([
                    str(clang_path),
                    "-S", "-O2",
                    str(c_file),
                    "-o", str(asm_file)
                ], check=True)

                # Read and count assembly instructions
                with open(asm_file, 'r', encoding='utf-8') as f:
                    asm_content = f.read()

                instruction_count = self.count_instructions(asm_content)

                results[str(c_file)] = {
                    "instruction_count": instruction_count,
                    "assembly": asm_content
                }

            # Switch back to PR branch
            pr_branch = f"pr-{self.current_pr_id}"
            subprocess.run(["git", "checkout", pr_branch], check=True)

            return results

        except subprocess.CalledProcessError as e:
            print(f"Run test suite failed: {e}")
            return results
        finally:
            os.chdir(original_dir)

    def count_instructions(self, asm_content):
        """Count assembly instructions"""
        lines = asm_content.split('\n')
        count = 0

        for line in lines:
            line = line.strip()
            if not line or line.startswith(('#', '.', ' ', '\t')):
                continue
            # Filter label lines
            if not line.endswith(':'):
                count += 1

        return count

    def build_before_optimization(self):
        """Build test suite at base commit (before optimization)"""
        print("Building before optimization...")

        # Load state to get base commit
        if self.state_file.exists():
            try:
                with open(self.state_file, 'r', encoding='utf-8') as f:
                    state = json.load(f)
                base_commit = state.get("data", {}).get("base_commit")
                pr_branch = state.get("data", {}).get("pr_branch")
            except:
                base_commit = None
                pr_branch = None
        else:
            base_commit = None
            pr_branch = None

        if base_commit:
            results = self.run_test_suite_at_commit(base_commit)
        else:
            # If no base commit found, use current PR branch
            results = self.run_test_suite_at_commit(f"pr-{self.current_pr_id}")

        if not results:
            print("Cannot get before optimization assembly")
            return False

        # Save state
        self.save_state(4, {
            "results_before": results,
            "base_commit": base_commit,
            "pr_branch": pr_branch
        })

        return True

    def build_after_optimization(self):
        """Build test suite at PR branch (after optimization)"""
        print("Building after optimization...")

        # Get PR branch
        pr_branch = f"pr-{self.current_pr_id}"
        results = self.run_test_suite_at_commit(pr_branch)

        if not results:
            print("Cannot get after optimization assembly")
            return False

        # Save state
        self.save_state(5, {
            "results_after": results,
            "pr_branch": pr_branch
        })

        return True

    def analyze_pr(self, pr_id):
        """Analyze PR optimization effects with checkpoint resume"""
        print(f"Starting analysis for PR #{pr_id}...")

        # Set current PR ID
        self.current_pr_id = pr_id

        # Load saved state if exists
        start_step = self.load_state()

        # Define analysis steps with their functions
        analysis_steps = [
            ("sync_repos", self.sync_repos),
            ("fetch_pr_code", lambda: self.fetch_pr_code(pr_id)),
            ("build_clang", self.build_clang),
            ("build_before_optimization", self.build_before_optimization),
            ("build_after_optimization", self.build_after_optimization),
            ("create_analysis_pr", self.create_analysis_pr)
        ]

        print(f"\n=== Resume from step {start_step + 1} ===")

        try:
            # Execute steps from the saved position
            for i in range(start_step, len(analysis_steps)):
                step_name, step_func = analysis_steps[i]
                print(f"\n=== Step {i + 1}: {step_name} ===")

                try:
                    # Execute the step
                    result = step_func()

                    if not result:
                        print(f"❌ Step {i + 1} ({step_name}) failed")
                        return False

                    # Save state for next step
                    self.save_state(i + 1)
                    print(f"✅ Step {i + 1} ({step_name}) completed")

                except Exception as e:
                    print(f"❌ Step {i + 1} ({step_name}) failed with error: {e}")
                    return False

            print(f"\n✅ PR #{pr_id} analysis completed!")
            return True

        except KeyboardInterrupt:
            print(f"\n⏸️ Analysis interrupted at step {start_step + 1}")
            print("You can resume by running the script again")
            return False
        except Exception as e:
            print(f"\n❌ Analysis failed at step {start_step + 1}: {e}")
            return False

    def create_analysis_pr(self, target_pr_id, results_before=None, results_after=None):
        """Create analysis PR"""
        print("Creating analysis PR...")

        # Load saved data if not provided
        if results_before is None or results_after is None:
            if self.state_file.exists():
                try:
                    with open(self.state_file, 'r', encoding='utf-8') as f:
                        state = json.load(f)
                    results_before = state.get("data", {}).get("results_before")
                    results_after = state.get("data", {}).get("results_after")
                except:
                    pass

        if not results_before or not results_after:
            print("Cannot find saved results data")
            return False

        # Create PR directory
        pr_dir = self.pr_analysis_dir / f"pr-{target_pr_id}"
        pr_dir.mkdir(parents=True, exist_ok=True)

        # Generate README report
        readme_content = self.generate_readme(target_pr_id, results_before, results_after)
        with open(pr_dir / "README.md", 'w', encoding='utf-8') as f:
            f.write(readme_content)

        # Save statistics data
        stats = {
            "target_pr": target_pr_id,
            "timestamp": str(datetime.datetime.now()),
            "results_before": results_before,
            "results_after": results_after,
            "comparison": self.compare_results(results_before, results_after)
        }

        with open(pr_dir / "stats.json", 'w', encoding='utf-8') as f:
            json.dump(stats, f, indent=2, ensure_ascii=False)

        # Commit before optimization assembly
        self.commit_assembly(pr_dir, results_before, f"LoongArch PR #{target_pr_id} - Before Optimization")

        # Commit after optimization assembly
        self.commit_assembly(pr_dir, results_after, f"LoongArch PR #{target_pr_id} - After Optimization", suffix="_opt")

        # Save final state
        self.save_state(6, {
            "analysis_completed": True,
            "pr_dir": str(pr_dir)
        })

        print(f"Analysis PR created: {pr_dir}")
        return True

    def generate_readme(self, target_pr_id, results_before, results_after):
        """Generate README report"""
        comparison = self.compare_results(results_before, results_after)

        readme = f"""# LoongArch LLVM PR #{target_pr_id} Optimization Analysis

## 📊 Analysis Overview
- **Target PR**: https://github.com/llvm/llvm-project/pull/{target_pr_id}
- **Analysis Time**: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
- **Test File Count**: {len(results_before)}
- **Total Instruction Change**: {comparison['total_delta']} ({comparison['total_percentage']:.1f}%)

## 📈 Detailed Statistics
| File Name | Before Optimization | After Optimization | Change | Change Rate | Status |
|-----------|-------------------|-------------------|--------|------------|--------|
"""

        for file_path, data in comparison['files'].items():
            status = "✅ Optimized" if data['delta'] < 0 else "❌ Regressed" if data['delta'] > 0 else "➖ No Change"
            readme += f"| {Path(file_path).name} | {data['before']} | {data['after']} | {data['delta']} | {data['percentage']:.1f}% | {status} |\n"

        readme += f"""
## 🔍 Assembly Comparison
GitHub automatically shows before/after assembly differences, view files directly.

## 💡 Key Observations
"""

        # Add key observations
        if comparison['optimized_files'] > 0:
            readme += f"- **Optimization Success**: {comparison['optimized_files']} files\n"
        if comparison['regressed_files'] > 0:
            readme += f"- **Performance Regression**: {comparison['regressed_files']} files\n"
        if comparison['max_reduction_file']:
            readme += f"- **Best Optimization**: {Path(comparison['max_reduction_file']).name} reduced {comparison['max_reduction']} instructions\n"
        if comparison['max_increase_file']:
            readme += f"- **Worst Regression**: {Path(comparison['max_increase_file']).name} increased {comparison['max_increase']} instructions\n"

        readme += """
## 🤝 Discussion
Welcome to discuss optimization effects in the comments!
"""
        return readme

    def compare_results(self, results_before, results_after):
        """Compare results"""
        comparison = {
            'files': {},
            'total_before': 0,
            'total_after': 0,
            'total_delta': 0,
            'total_percentage': 0.0,
            'optimized_files': 0,
            'regressed_files': 0,
            'neutral_files': 0,
            'max_reduction': 0,
            'max_reduction_file': '',
            'max_increase': 0,
            'max_increase_file': ''
        }

        # Merge all files
        all_files = set(results_before.keys()) | set(results_after.keys())

        for file_path in all_files:
            before = results_before.get(file_path, {'instruction_count': 0})
            after = results_after.get(file_path, {'instruction_count': 0})

            before_count = before['instruction_count']
            after_count = after['instruction_count']
            delta = after_count - before_count
            percentage = (delta / before_count * 100) if before_count > 0 else 0

            comparison['files'][file_path] = {
                'before': before_count,
                'after': after_count,
                'delta': delta,
                'percentage': percentage
            }

            comparison['total_before'] += before_count
            comparison['total_after'] += after_count

            if delta < 0:
                comparison['optimized_files'] += 1
                if delta < comparison['max_reduction']:
                    comparison['max_reduction'] = delta
                    comparison['max_reduction_file'] = file_path
            elif delta > 0:
                comparison['regressed_files'] += 1
                if delta > comparison['max_increase']:
                    comparison['max_increase'] = delta
                    comparison['max_increase_file'] = file_path
            else:
                comparison['neutral_files'] += 1

        # Calculate overall change
        comparison['total_delta'] = comparison['total_after'] - comparison['total_before']
        comparison['total_percentage'] = (comparison['total_delta'] / comparison['total_before'] * 100) if comparison['total_before'] > 0 else 0

        return comparison

    def commit_assembly(self, pr_dir, results, commit_msg, suffix=""):
        """Commit assembly files"""
        original_dir = os.getcwd()
        os.chdir(pr_dir.parent)

        try:
            # Initialize git repository (if needed)
            if not Path(".git").exists():
                subprocess.run(["git", "init"], check=True)
                subprocess.run(["git", "remote", "add", "origin", self.config["github_remote_url"]], check=True)

            # Write assembly files
            for file_path, data in results.items():
                filename = Path(file_path).name
                if suffix:
                    filename = filename.replace('.c', f'{suffix}.s')
                else:
                    filename = filename.replace('.c', '.s')

                with open(pr_dir / filename, 'w', encoding='utf-8') as f:
                    f.write(data['assembly'])

            # Add files and commit
            subprocess.run(["git", "add", str(pr_dir)], check=True)
            subprocess.run(["git", "commit", "-m", commit_msg], check=True)

            return True

        except subprocess.CalledProcessError as e:
            print(f"Commit failed: {e}")
            return False
        finally:
            os.chdir(original_dir)

    def update_analysis_pr(self, target_pr_id):
        """Update analysis PR (when target PR has updates)"""
        print(f"Updating analysis for PR #{target_pr_id}...")

        # Set current PR ID
        self.current_pr_id = target_pr_id

        # Load saved state if exists
        start_step = self.load_state()

        # Define update steps with their functions
        update_steps = [
            ("sync_repos", self.sync_repos),
            ("fetch_pr_code", lambda: self.fetch_pr_code(target_pr_id)),
            ("build_before_optimization", self.build_before_optimization),
            ("build_after_optimization", self.build_after_optimization),
            ("create_analysis_pr", lambda: self.create_analysis_pr(target_pr_id, None, None))
        ]

        print(f"\n=== Resume from step {start_step + 1} ===")

        try:
            # Execute steps from the saved position
            for i in range(start_step, len(update_steps)):
                step_name, step_func = update_steps[i]
                print(f"\n=== Step {i + 1}: {step_name} ===")

                try:
                    # Execute the step
                    result = step_func()

                    if not result:
                        print(f"❌ Step {i + 1} ({step_name}) failed")
                        return False

                    # Save state for next step
                    self.save_state(i + 1)
                    print(f"✅ Step {i + 1} ({step_name}) completed")

                except Exception as e:
                    print(f"❌ Step {i + 1} ({step_name}) failed with error: {e}")
                    return False

            print(f"\n✅ PR #{target_pr_id} analysis updated!")
            return True

        except KeyboardInterrupt:
            print(f"\n⏸️ Update interrupted at step {start_step + 1}")
            print("You can resume by running the script again")
            return False
        except Exception as e:
            print(f"\n❌ Update failed at step {start_step + 1}: {e}")
            return False


def main():
    parser = argparse.ArgumentParser(description="LoongArch LLVM PR Optimization Analysis Tool")
    parser.add_argument("--pr", type=int, required=True, help="PR number to analyze")
    parser.add_argument("--test-dir", default="SingleSource/Benchmarks", help="Test directory")
    parser.add_argument("--build-dir", default="build", help="Build directory")
    parser.add_argument("--update", action="store_true", help="Update existing analysis PR")
    parser.add_argument("--clear-state", action="store_true", help="Clear saved state and start fresh")

    args = parser.parse_args()

    analyzer = LoongArchPRAnalyzer()

    if args.clear_state:
        # Clear saved state
        analyzer.clear_state()
        print("🧹 State cleared, starting fresh analysis")
        return

    if args.update:
        # Update mode
        analyzer.update_analysis_pr(args.pr)
    else:
        # New analysis mode with checkpoint resume
        analyzer.analyze_pr(args.pr)


if __name__ == "__main__":
    main()