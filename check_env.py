#!/usr/bin/env python3
"""
环境检查脚本 - 在运行PR分析前检查所有��件
"""

import os
import json
import subprocess
from pathlib import Path

def check_command(command, name):
    """检查命令是否可用"""
    try:
        subprocess.run([command, "--version"], capture_output=True, check=True)
        print(f"✅ {name}: 可用")
        return True
    except (subprocess.CalledProcessError, FileNotFoundError):
        print(f"❌ {name}: 不可用")
        return False

def check_directory(path, name):
    """检查目录是否存在"""
    if Path(path).exists():
        print(f"✅ {name}: 存在 ({path})")
        return True
    else:
        print(f"❌ {name}: 不存在 ({path})")
        return False

def check_file(path, name):
    """检查文件是否存在"""
    if Path(path).exists():
        print(f"✅ {name}: 存在 ({path})")
        return True
    else:
        print(f"❌ {name}: 不存在 ({path})")
        return False

def check_config():
    """检查配置文件"""
    if not Path("config.json").exists():
        print("❌ 配置文件: 不存在 (config.json)")
        return False

    try:
        with open("config.json", 'r') as f:
            config = json.load(f)

        print("✅ 配置文件: 格式正确")

        # 检查关键配置
        required_keys = ["llvm_repo", "test_suite_dir", "clang_build_dir", "github_remote_url"]
        for key in required_keys:
            if key in config:
                print(f"✅ 配置项 {key}: {config[key]}")
            else:
                print(f"❌ 配置项 {key}: 缺失")

        # 检查github_remote_url是否为默认值
        if config.get("github_remote_url") == "git@github.com:your-org/loongarch-opt-analysis.git":
            print("⚠️  配置项 github_remote_url: 仍然是默认值，请修改")

        return True
    except Exception as e:
        print(f"❌ 配置文件: 解析失败 ({e})")
        return False

def main():
    print("LoongArch PR分析工具 - 环境检查")
    print("=" * 50)

    # 检查命令
    print("\n=== 检查命令 ===")
    commands = [
        ("git", "Git"),
        ("python3", "Python3"),
        ("cmake", "CMake"),
        ("ninja", "Ninja"),
        ("clang", "Clang"),
        ("clang++", "Clang++"),
        ("sccache", "Sccache (可选)"),
        ("mold", "Mold (可选)")
    ]

    cmd_ok = True
    for cmd, name in commands:
        if not check_command(cmd, name):
            if "可选" not in name:
                cmd_ok = False

    # 检查目录
    print("\n=== 检查目录 ===")
    directories = [
        ("repos", "源码目录"),
        ("repos/llvm-project", "LLVM仓库"),
        ("repos/llvm-test-suite", "测试套件目录"),
        ("build", "构建目录"),
        ("pr-analysis", "分析输出目录")
    ]

    dir_ok = True
    for path, name in directories:
        if not check_directory(path, name):
            dir_ok = False

    # 检查文件
    print("\n=== 检查文件 ===")
    files = [
        ("config.json", "配置文件"),
        ("pr_analyzer.py", "分析脚本")
    ]

    file_ok = True
    for path, name in files:
        if not check_file(path, name):
            file_ok = False

    # 检查配置
    print("\n=== 检查配置 ===")
    config_ok = check_config()

    # 检查clang
    print("\n=== 检查Clang ===")
    clang_path = "build/bin/clang"
    if check_file(clang_path, "Clang"):
        print("✅ Clang已构建，可以直接运行分析")
    else:
        print("⚠️  Clang未构建，需要先构建")
        print("   运行: python3 pr_analyzer.py --pr 12345 --build-dir ./build")

    # 总结
    print("\n" + "=" * 50)
    print("检查结果总结:")

    if cmd_ok and dir_ok and file_ok and config_ok:
        print("✅ 所有基本条件满足！")
        if not Path(clang_path).exists():
            print("📋 下一步: 构建Clang")
            print("   python3 pr_analyzer.py --pr 12345 --build-dir ./build")
        print("📋 然后就可以运行分析了:")
        print("   python3 pr_analyzer.py --pr 12345")
    else:
        print("❌ 部分条件不满足，请检查上述错误")

        if not cmd_ok:
            print("💡 安装缺失的命令:")
            print("   sudo apt-get install build-essential cmake ninja-build clang")
            print("   # 可选优化工具（加速编译）:")
            print("   sudo apt-get install sccache mold")

        if not dir_ok:
            print("💡 创建缺失的目录:")
            print("   mkdir -p repos")
            print("   cd repos")
            print("   git clone https://github.com/llvm/llvm-project.git")
            print("   git clone https://github.com/llvm/llvm-test-suite.git")
            print("   cd ..")

        if not config_ok:
            print("💡 检查config.json配置")

if __name__ == "__main__":
    main()