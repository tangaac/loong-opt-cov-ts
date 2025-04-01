#!/usr/bin/python3

import argparse
import subprocess
import json
import os

def load_status(filepath):
    if os.path.exists(filepath):
        with open(filepath, 'r') as f:
            return json.load(f)
    return {}

def save_status(filepath, status):
    with open(filepath, 'w') as f:
        json.dump(status, f, indent=2)

def process_pr(args):
    pr_id = args.pr_id
    filepath = os.path.join("cache", f"{pr_id}.json")
    scripts = [
            ["sh", "prepare.sh"], \
            ["sh", "llvm/checkout_pr.sh", f"{pr_id}"], \
            ["sh", "llvm/build.sh"], \
            ["sh", "test-suite/build.sh"], \
            ["sh", "test-suite/copy.sh", "before"], \
            ["sh", "llvm/back_pr.sh"], \
            ["sh", "llvm/build.sh"], \
            ["sh", "test-suite/build.sh"], \
            ["sh", "test-suite/copy.sh", "after"], \
            ["sh", "test-suite/compare.sh", f"{pr_id}"],
    ]

    steps = ["prepare", \
             "checkout pr", \
             "build llvm before", \
             "build test-suite before", \
             "copy files to before", \
             "back to pr commits", \
             "build llvm after", \
             "build test-suite after", \
             "copy files to after", \
             "compare before and after", \
    ]

    status = load_status(filepath)

    for step, script in zip(steps, scripts):
        if status.get(step, False):
            print(f"[-] 跳过成功执行的脚本：{step}")
            continue
        print(f"[*] 正在执行：{step}, {script}")

        try:
            subprocess.check_call(script)
            status[step] = True
            print(f"[+] 成功执行：{step}")

        except subprocess.CalledProcessError as e:
            status[step] = False 
            print(f"[!] 执行失败：{step} (返回码: {e.returncode})")
            print(f"错误输出:\n{e.stderr}")

        except Exception as e:
            status[step] = False
            print(f"[!] 执行错误: {step} ({str(e)})")

        finally:
            save_status(filepath, status)

    # checkout to commit without this pr

    # subprocess.check_call(["sh", "test-suite/build.sh"])
    # subprocess.check_call(["sh", "test-suite/copy.sh", "after"])


def process_cache(args):
    if args.pr_id:
        pr_id = args.pr_id
        filepath = os.path.join("cache", f"{pr_id}.json")
        if os.path.exists(filepath):
            print(filepath)
        else:
            print("No such file")
    else:
        for (root, dirs, files) in os.walk('cache'):
            for file in files:
                print(file)






def parse_args():
    parser =  argparse.ArgumentParser(description = "Coverage of LLVM LoongArch backend Optimization on llvm-test-suite")
    parser.set_defaults(func=lambda x: parser.print_help())
    subparsers = parser.add_subparsers();

    # add pr subcommand
    parser_pr = subparsers.add_parser("pr", help = "Work with Github pull request of llvm-project")
    parser_pr.add_argument("pr_id", type=int, help="Pull request id of llvm-project")
    parser_pr.set_defaults(func=process_pr)


    # add cache subcommand
    parser_cache = subparsers.add_parser("cache", help = "See cached files")
    parser_cache.add_argument("-l", "--list", action='store_false', help="List all cached prs")
    parser_cache.add_argument("pr_id", type=int, nargs='?', default=None, help="Show cached pr of a specified pr id")
    parser_cache.set_defaults(func=process_cache)

    args = parser.parse_args()
    return args


if __name__ == '__main__':
    args = parse_args();
    args.func(args)

