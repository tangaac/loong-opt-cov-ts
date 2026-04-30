# LoongArch LLVM PR 分析工具 - 断点续传功能

## 功能说明

本工具现在支持断点续传功能，当脚本运行失败时，可以从中断的位置继续执行，无需从头开始。

## 使用方法

### 1. 正常执行分析

```bash
python pr_analyzer.py --pr <PR编号>
```

### 2. 断点续传

如果脚本在执行过程中失败，只需再次运行相同的命令：

```bash
python pr_analyzer.py --pr <PR编号>
```

工具会自动检查是否存在保存的状态文件，并从失败的位置继续执行。

### 3. 清除状态并重新开始

如果需要完全重新开始分析（清除所有保存的状态），使用 `--clear-state` 参数：

```bash
python pr_analyzer.py --pr <PR编号> --clear-state
```

### 4. 更新现有分析

```bash
python pr_analyzer.py --pr <PR编号> --update
```

## 工作原理

1. **状态保存**：工具在完成每个步骤后会保存当前的状态到 `analysis_state.json` 文件
2. **状态恢复**：重新运行脚本时，会检查状态文件并从上次成功的步骤继续
3. **步骤追踪**：分析过程分为6个主要步骤：
   - Step 1: 同步源代码仓库 (sync_repos)
   - Step 2: 获取PR代码 (fetch_pr_code)
   - Step 3: 构建Clang (build_clang)
   - Step 4: 构建优化前的测试套件 (build_before_optimization)
   - Step 5: 构建优化后的测试套件 (build_after_optimization)
   - Step 6: 创建分析PR (create_analysis_pr)

## 状态文件

状态文件 `analysis_state.json` 包含以下信息：
- 当前分析的PR编号
- 已完成的步骤
- 最后成功执行的步骤
- 每个步骤的数据（如提交哈希、结果等）
- 时间戳

## 错误处理

- 如果某个步骤失败，工具会显示错误信息并停止
- 重新运行脚本时会从失败的步骤继续
- 如果PR编号与之前不同，会自动清除状态并开始新的分析

## 注意事项

1. 确保在同一个工作目录中运行脚本，以便找到状态文件
2. 如果改变了PR编号，状态文件会被自动清除
3. 状态文件是JSON格式，可以直接查看或手动编辑（不推荐）