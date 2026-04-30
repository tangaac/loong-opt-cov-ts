#!/usr/bin/env python3
"""
工具函数模块
仅使用Python标准库
"""

import os
import subprocess
import json
import re
import shutil
from pathlib import Path


def run_command(cmd, cwd=None, capture_output=True):
    """运行命令并返回结果"""
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
        print(f"命令执行失败: {' '.join(cmd)}")
        print(f"错误: {e}")
        if e.stdout:
            print(f"输出: {e.stdout}")
        if e.stderr:
            print(f"错误输出: {e.stderr}")
        raise


def get_git_diff(pr_id, remote="origin"):
    """获取PR的diff"""
    cmd = ["git", "diff", f"{remote}/pull/{pr_id}/head...{remote}/{pr_id}"]
    result = run_command(cmd)
    return result.stdout


def get_pr_files(pr_id, remote="origin"):
    """获取PR修改的文件列表"""
    cmd = ["git", "diff", "--name-only", f"{remote}/pull/{pr_id}/head...{remote}/{pr_id}"]
    result = run_command(cmd)
    files = result.stdout.strip()
    return files.split('\n') if files else []


def parse_pr_url(pr_url):
    """从PR URL中提取PR编号"""
    # 支持多种URL格式
    patterns = [
        r'pull/(\d+)',
        r'pr/(\d+)',
        r'(\d+)$'
    ]

    for pattern in patterns:
        match = re.search(pattern, pr_url)
        if match:
            return int(match.group(1))

    raise ValueError(f"无法从URL中提取PR编号: {pr_url}")


def calculate_instruction_stats(assembly_files):
    """计算汇编文件的统计信息"""
    stats = {
        'total_files': 0,
        'total_instructions': 0,
        'file_stats': {}
    }

    for file_path, content in assembly_files.items():
        instruction_count = count_instructions(content)

        stats['total_files'] += 1
        stats['total_instructions'] += instruction_count
        stats['file_stats'][file_path] = {
            'instruction_count': instruction_count
        }

    return stats


def count_instructions(asm_content):
    """统计汇编指令数量"""
    lines = asm_content.split('\n')
    count = 0

    for line in lines:
        line = line.strip()
        if not line or line.startswith(('#', '.', ' ', '\t')):
            continue
        # 过滤标签行
        if not line.endswith(':'):
            count += 1

    return count


def generate_html_report(pr_id, comparison):
    """生成HTML报告"""
    html_template = f"""<!DOCTYPE html>
<html>
<head>
    <title>LoongArch LLVM PR #{pr_id} 优化分析</title>
    <style>
        body {{ font-family: Arial, sans-serif; margin: 20px; }}
        .summary {{ background: #f5f5f5; padding: 15px; border-radius: 5px; }}
        .stats-table {{ width: 100%; border-collapse: collapse; margin-top: 20px; }}
        .stats-table th, .stats-table td {{
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }}
        .stats-table th {{ background-color: #f2f2f2; }}
        .positive {{ color: green; font-weight: bold; }}
        .negative {{ color: red; font-weight: bold; }}
        .neutral {{ color: gray; }}
        .file-link {{ color: #0066cc; text-decoration: none; }}
        .file-link:hover {{ text-decoration: underline; }}
    </style>
</head>
<body>
    <h1>LoongArch LLVM PR #{pr_id} 优化分析</h1>

    <div class="summary">
        <h2>📊 分析概览</h2>
        <p><strong>总指令变化:</strong> <span class="positive">{comparison['total_delta']}</span> ({comparison['total_percentage']:.1f}%)</p>
        <p><strong>优化成功:</strong> {comparison['optimized_files']} 个文件</p>
        <p><strong>性能退化:</strong> {comparison['regressed_files']} 个文件</p>
        <p><strong>无变化:</strong> {comparison['neutral_files']} 个文件</p>
    </div>

    <h2>📈 详细统计</h2>
    <table class="stats-table">
        <tr>
            <th>文件名</th>
            <th>优化前指令数</th>
            <th>优化后指令数</th>
            <th>变化量</th>
            <th>变化率</th>
            <th>状态</th>
        </tr>
"""

    # 获取文件名（去掉路径）
    files_sorted = sorted(comparison['files'].keys())
    for file_path in files_sorted:
        data = comparison['files'][file_path]
        filename = os.path.basename(file_path)
        status_class = "positive" if data['delta'] < 0 else "negative" if data['delta'] > 0 else "neutral"
        status_text = "优化" if data['delta'] < 0 else "退化" if data['delta'] > 0 else "无变化"

        html_template += f"""
        <tr>
            <td><a href="#" class="file-link">{filename}</a></td>
            <td>{data['before']}</td>
            <td>{data['after']}</td>
            <td class="{status_class}">{data['delta']}</td>
            <td class="{status_class}">{data['percentage']:.1f}%</td>
            <td class="{status_class}">{status_text}</td>
        </tr>
"""

    html_template += """
    </table>

    <h2>💡 关键观察</h2>
    <ul>
"""

    if comparison['optimized_files'] > 0:
        html_template += f"<li><strong>优化成功:</strong> {comparison['optimized_files']} 个文件</li>"
    if comparison['regressed_files'] > 0:
        html_template += f"<li><strong>性能退化:</strong> {comparison['regressed_files']} 个文件</li>"
    if comparison['max_reduction_file']:
        filename = os.path.basename(comparison['max_reduction_file'])
        html_template += f"<li><strong>最大优化:</strong> {filename} 减少了 {comparison['max_reduction']} 条指令</li>"
    if comparison['max_increase_file']:
        filename = os.path.basename(comparison['max_increase_file'])
        html_template += f"<li><strong>最大退化:</strong> {filename} 增加了 {comparison['max_increase']} 条指令</li>"

    html_template += """
    </ul>
</body>
</html>
"""
    return html_template


def setup_git_repo(repo_path, remote_url):
    """设置git仓库"""
    try:
        if not os.path.exists(repo_path):
            os.makedirs(repo_path, exist_ok=True)
            os.chdir(repo_path)
            run_command(["git", "init"])
            run_command(["git", "remote", "add", "origin", remote_url])
        else:
            os.chdir(repo_path)

        return True
    except Exception as e:
        print(f"设置git仓库失败: {e}")
        return False


def cleanup_temp_files(temp_dir):
    """清理临时文件"""
    if os.path.exists(temp_dir):
        try:
            shutil.rmtree(temp_dir)
            print(f"已清理临时目录: {temp_dir}")
        except Exception as e:
            print(f"清理临时目录失败: {e}")


def validate_environment():
    """验证环境依赖"""
    checks = {
        'git': False,
        'cmake': False,
        'ninja': False,
        'clang': False
    }

    try:
        run_command(['git', '--version'])
        checks['git'] = True
    except:
        pass

    try:
        run_command(['cmake', '--version'])
        checks['cmake'] = True
    except:
        pass

    try:
        run_command(['ninja', '--version'])
        checks['ninja'] = True
    except:
        pass

    try:
        run_command(['clang', '--version'])
        checks['clang'] = True
    except:
        pass

    return checks