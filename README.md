# LoongArch LLVM PR优化分析工具

用于分析LoongArch平台上LLVM PR的优化效果，通过对比优化前后的汇编输出来评估优化效果。

## 🚀 快速开始

### 快速开始

### 30秒上手

```bash
# 1. 克隆项目
git clone <your-repo-url>
cd loong-opt-cov-ts

# 2. 创建源码目录并克隆
mkdir -p repos
cd repos
git clone https://github.com/llvm/llvm-project.git
git clone https://github.com/llvm/llvm-test-suite.git
cd ..

# 3. 检查环境（可选）
python3 check_env.py

# 4. 构建clang（只需一次）
python3 pr_analyzer.py --pr 12345 --build-dir ./build

# 5. 分析PR
python3 pr_analyzer.py --pr 12345
```

## 功能特点

- 🔄 **智能基准检测**：自动计算PR分支领先master的commit数量，确定优化前的基准点
- 📊 **指令统计对比**：精确统计优化前后汇编指令数量变化
- 📈 **详细报告生成**：自动生成包含统计数据的Markdown和HTML报告
- 🔍 **GitHub PR展示**：通过两个commit展示汇编差异，支持inline diff
- 🚀 **更新机制**：支持当目标PR更新时重新分析并更新分析PR

## 安装与配置

### 环境要求

- Python 3.6+（仅使用标准库，无需安装额外依赖）
- Git
- CMake
- Ninja
- Clang
- 可选优化工具：sccache（编译缓存）、mold（快速链接器）

### 配置设置

首先创建目录结构并克隆源码：

```bash
# 创建repos目录
mkdir -p repos

# 克隆LLVM项目（如果还没有）
cd repos
git clone https://github.com/llvm/llvm-project.git
git clone https://github.com/llvm/llvm-test-suite.git

# 返回项目根目录
cd ..
```

然后修改 `config.json` 根据你的环境配置：

```json
{
  "work_dir": "./temp_work",
  "llvm_repo": "./repos/llvm-project",
  "test_suite_dir": "./repos/llvm-test-suite",
  "pr_analysis_dir": "./pr-analysis",
  "build_type": "Release",
  "parallel_jobs": 4,
  "clang_build_dir": "./build",
  "github_remote": "origin",
  "github_base_branch": "master",
  "github_remote_url": "git@github.com:your-username/your-analysis-repo.git",
  "cmake_args": [
    "-DCMAKE_CXX_COMPILER=clang++",
    "-DCMAKE_C_COMPILER=clang",
    "-DCMAKE_BUILD_TYPE=Release",
    "-DCMAKE_C_COMPILER_LAUNCHER=sccache",
    "-DCMAKE_CXX_COMPILER_LAUNCHER=sccache",
    "-DLLVM_USE_LINKER=mold",
    "-DLLVM_TARGETS_TO_BUILD=LoongArch",
    "-DBUILD_SHARED_LIBS=true",
    "-DLLVM_ENABLE_PROJECTS=clang"
  ]
}
```

**重要**：请务必修改 `github_remote_url` 为你自己的分析仓库地址。

### 项目目录结构

```
loongarch-opt-analysis/
├── repos/                    # 源码目录（不提交到git）
│   ├── llvm-project/        # LLVM源码仓库
│   └── llvm-test-suite/     # 测试套件仓库
├── pr-analysis/             # 分析PR输出目录
├── temp_work/               # 临时工作目录
├── build/                   # 构建目录
├── .gitignore              # git忽略文件
├── pr_analyzer.py          # 主分析脚本（无外部依赖）
├── check_env.py            # 环境检查脚本
├── config.json             # 配置文件
├── requirements.txt        # 依赖列表（仅标准库）
└── README.md              # 说明文档
```

## 快速开始

### 1. 克隆项目并设置源码

```bash
# 克隆分析工具
git clone <your-repo-url>
cd loongarch-opt-analysis

# 创建源码目录并克隆
mkdir -p repos
cd repos
git clone https://github.com/llvm/llvm-project.git
git clone https://github.com/llvm/llvm-test-suite.git

# 返回项目根目录
cd ..
```

### 2. 配置环境

检查并修改 `config.json` 中的路径设置：

```json
{
  "llvm_repo": "./repos/llvm-project",
  "test_suite_dir": "./repos/llvm-test-suite"
}
```

### 3. 构建Clang（首次需要）

**重要**：首次使用前需要先构建clang，编译过程可能需要较长时间：

```bash
# 构建clang（只需要执行一次）
python3 pr_analyzer.py --pr 12345 --build-dir ./build
```

或者手动构建：

```bash
# 创建构建目录
mkdir -p build
cd build

# 配置CMake（使用LoongArch专用参数）
cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER_LAUNCHER=sccache -DCMAKE_CXX_COMPILER_LAUNCHER=sccache -DLLVM_USE_LINKER=mold -DLLVM_TARGETS_TO_BUILD=LoongArch -DBUILD_SHARED_LIBS=true -DLLVM_ENABLE_PROJECTS="clang" -G Ninja ../repos/llvm-project

# 编译clang（需要较长时间）
ninja clang
```

**如果构建失败**：
- 检查磁盘空间是否足够（至少需要30GB）
- 确保所有依赖已安装：`sudo apt-get install build-essential ninja-build cmake sccache mold`
- 尝试清理build目录后重新构建
- 查看构建日志定位具体错误

### 4. 运行分析

```bash
# 分析PR（会自动同步源码）
python3 pr_analyzer.py --pr 12345

# 指定测试目录
python3 pr_analyzer.py --pr 12345 --test-dir SingleSource/Benchmarks

# 更新现有分析（当目标PR有更新时）
python3 pr_analyzer.py --pr 12345 --update
```

## 使用方法

### 前提条件

确保已准备好以下环境：
- repos目录下有llvm-project和llvm-test-suite仓库
- 配置了正确的config.json
- **首次使用前需要构建clang**（见上面的构建步骤）

### 基本用法

```bash
# 分析新PR（会自动同步源码）
python3 pr_analyzer.py --pr 12345

# 指定测试目录
python3 pr_analyzer.py --pr 12345 --test-dir SingleSource/Benchmarks

# 更新现有分析（当目标PR有更新时）
python3 pr_analyzer.py --pr 12345 --update
```

### 工作流程说明

1. **自动同步源码**：每次运行都会自动更新llvm-project和llvm-test-suite
2. **智能基准检测**：自动计算PR分支领先master的commit数量，确定优化前的基准点
3. **构建Clang**：如果clang不存在则构建
4. **双阶段编译**：
   - 阶段1：切换到基准commit → 编译测试套件 → 获取优化前汇编
   - 阶段2：切回PR分支 → 重新编译 → 获取优化后汇编
5. **生成分析PR**：创建包含两个commit的分析PR，展示汇编差异

### 基本用法

```bash
# 分析新PR
python3 pr_analyzer.py --pr 12345

# 指定测试目录
python3 pr_analyzer.py --pr 12345 --test-dir SingleSource/Benchmarks

# 更新现有分析（当目标PR有更新时）
python3 pr_analyzer.py --pr 12345 --update
```

## 项目结构

```
loongarch-opt-analysis/
├── repos/                    # 源码目录（不提交到git）
│   ├── llvm-project/        # LLVM源码仓库
│   └── llvm-test-suite/     # 测试套件仓库
├── pr-analysis/             # 分析PR输出目录
│   ├── pr-12345/            # 按PR编号组织
│   │   ├── README.md        # 分析报告
│   │   ├── *.s             # 汇编文件（两个版本）
│   │   └── stats.json      # 统计数据
│   └── ...
├── temp_work/               # 临时工作目录
├── build/                   # 构建���录
├── .gitignore              # git忽略文件
├── pr_analyzer.py          # 主分析脚本（无外部依赖）
├── config.json             # 配置文件
├── requirements.txt        # 依赖列表（仅标准库）
└── README.md              # 说明文档
```

## 输出示例

### 控制台输出
```
LoongArch LLVM PR #12345 优化分析
=====================================
📊 获取PR代码...
PR分支领先master 3 个commit
📊 编译优化前代码...
在commit abc1234 运行测试套件...
📊 编译优化后代码...
在commit def5678 运行测试套件...
📊 创建分析PR...
✅ PR #12345 分析完成！

📈 总体优化: -342指令 (-8.5%)
✅ 优化成功: 21个文件 (84%)
⚠️  性能下降: 4个文件 (16%)
🎯 最大优化: benchmark4.c (-275指令, -15.8%)
```

### GitHub PR展示
- **Commit 1**: `LoongArch PR #12345 - 优化前汇编`
- **Commit 2**: `LoongArch PR #12345 - 优化后汇编`
- GitHub自动显示inline diff对比
- README.md包含详细统计和分析

### 报告内容示例
```markdown
# LoongArch LLVM PR #12345 优化分析

## 📊 分析概览
- **目标PR**: https://github.com/llvm/llvm-project/pull/12345
- **分析时间**: 2026-04-29 10:30:00
- **测试文件数量**: 25
- **总指令变化**: -342 (-8.5%)

## 📈 详细统计
| 文件名 | 优化前指令数 | 优化后指令数 | 变化量 | 变化率 | 状态 |
|--------|-------------|-------------|--------|--------|------|
| benchmark1.c | 455 | 399 | -56 | -12.3% | ✅ 优化 |
| benchmark2.c | 412 | 389 | -23 | -5.6% | ✅ 优化 |
| benchmark3.c | 367 | 379 | +12 | +3.2% | ❌ 退化 |
| benchmark4.c | 1742 | 1467 | -275 | -15.8% | ✅ 优化 |

## 💡 关键观察
- **优化成功**: 21个文件
- **性能退化**: 4个文件
- **最大优化**: benchmark4.c 减少了275条指令
```

### 工作流程

1. **获取PR代码**
   ```bash
   python3 pr_analyzer.py --pr 12345
   ```

2. **自动执行分析**
   - 使用repos目录中的llvm-project源码
   - 计算PR分支领先master的commit数量
   - 切换到基准commit，编译llvm-test-suite（优化前）
   - 切回PR分支，重新编译（优化后）
   - 统计指令变化
   - 创建分析PR

3. **查看结果**
   - GitHub PR显示汇编差异（两个commit）
   - README.md包含详细统计报告
   - stats.json包含原始数据

## 更新机制

当目标PR有新的commit时：

```bash
python3 pr_analyzer.py --pr 12345 --update
```

- 重新计算基准commit
- 重新编译两个版本
- 删除旧提交，重新创建两个commit
- Force push更新分析PR

## 源码管理

### 源码目录结构

```
repos/
├── llvm-project/          # LLVM主仓库（包含clang等）
│   ├── llvm/
│   ├── clang/
│   └── ...
└── llvm-test-suite/       # 测试套件仓库
    ├── SingleSource/
    ├── MultiSource/
    └── ...
```

### 注意事项

- **不要提交源码到git**：repos目录已添加到.gitignore
- **独立管理源码**：可以单独更新源码仓库
- **避免submodule**：使用普通git clone，避免首次克隆时间过长
- **空间占用**：完整源码约10-20GB，确保有足够磁盘空间

### 更新源码

```bash
# 更新LLVM源码
cd repos/llvm-project
git pull origin master
cd ../..

# 更新测试套件
cd repos/llvm-test-suite
git pull origin master
cd ../..
```

### 基准检测算法
```bash
# 计算PR分支领先master的commit数量
git rev-list --count master..pr-branch

# 如果领先N个commit，基准commit为：
git rev-parse pr-branch~(N-1)
```

### 双阶段编译
1. **阶段1**: 切换到基准commit → 编译测试套件 → 获取优化前汇编
2. **阶段2**: 切回PR分支 → 重新编译 → 获取优化后汇编

### 指令统计
- 过滤汇编注释、空行、标签
- 统计实际指令数量
- 计算变化量和百分比

## 注意事项

### 1. 环境准备
- 确保repos目录下已克隆llvm-project和llvm-test-suite
- 检查config.json中的路径配置是否正确
- 需要安装CMake和Ninja
- **首次使用前必须先构建clang**（见上面的构建步骤）

### 2. 磁盘空间要求
- **源码空间**：完整源码约10-20GB（llvm-project + llvm-test-suite）
- **编译空间**：编译过程需要额外20-30GB空间（build目录）
- **临时空间**：temp_work目录会自动创建和清理
- **建议总空间**：至少50GB可用空间

### 3. GitHub配置
- 需要配置正确的remote URL
- 需要推送权限到分析仓库
- 分析仓库需要是空的或初始化过的

### 4. 性能考虑
- 编译过程较慢，建议在空闲时运行
- 首次编译clang可能需要30分钟到几小时
- 每次分析都会重新编译测试套件
- 可以使用`--parallel-jobs`加速构建（在config.json中配置）

### 5. 自动清理
- temp_work目录会在每次分析开始时自动清理
- build目录保留，避免重复构建clang
- pr-analysis目录保留，用于查看历史分析结果

## 故障排除

### 常见问题

1. **git命令失败**
   - 检查git配置：`git config --global user.name "Your Name"`
   - 确保有访问权限：`git ls-remote origin`
   - 检查网络连接

2. **编译失败**
   - 检查CMake和Ninja安装：`cmake --version`, `ninja --version`
   - 确保依赖库完整：`sudo apt-get install build-essential ninja-build cmake clang`
   - 安装可选优化工具：`sudo apt-get install sccache mold`
   - 检查磁盘空间是否足够
   - 尝试清理build目录重新编译：`rm -rf build && python3 pr_analyzer.py --pr 12345`

3. **找不到测试文件**
   - 检查`test_suite_dir`配置
   - 确认路径存在：`ls -la repos/llvm-test-suite/`
   - 检查测试目录是否为空

4. **clang构建失败**
   - 确保使用正确的Python版本（python3）
   - 检查llvm-project路径是否正确
   - 尝试手动构建clang
   - 清理build目录后重试：`rm -rf build && python3 pr_analyzer.py --pr 12345`

5. **分析PR创建失败**
   - 检查GitHub remote配置
   - 确保有推送权限
   - 检查分析仓库是否为空

### 调试模式

添加`-v`参数查看详细输出：
```bash
python3 pr_analyzer.py --pr 12345 -v
```

### 手动调试步骤

1. 检查源码同步：
```bash
cd repos/llvm-project
git status
cd ../llvm-test-suite
git status
```

2. 检查clang构建：
```bash
ls -la build/bin/clang
```

3. 检查测试文件：
```bash
ls -la repos/llvm-test-suite/SingleSource/Benchmarks/
```

4. 手动测试编译：
```bash
build/bin/clang -S -O2 repos/llvm-test-suite/SingleSource/Benchmarks/test.c -o test.s
```

### LoongArch特定优化

为了获得最佳编译性能，建议安装以下优化工具：

```bash
# 安装sccache（编译缓存）
sudo apt-get install sccache

# 安装mold（快速链接器）
sudo apt-get install mold

# 配置环境变量
export SCCACHE_CACHE_SIZE="10G"
export CMAKE_C_COMPILER_LAUNCHER=sccache
export CMAKE_CXX_COMPILER_LAUNCHER=sccache
```

## 开发计划

- [ ] 支持更多测试套件（如CTMark）
- [ ] 支持自定义编译选项
- [ ] 添加历史数据分析功能
- [ ] Web界面展示

## 许可证

MIT License