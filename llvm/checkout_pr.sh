#/bin/bash
LLVM_SOURCE_DIR=$(pwd)/llvm/llvm-project

cd $LLVM_SOURCE_DIR
gh pr checkout $1
commit_count=$(git rev-list main.. --count)
git checkout HEAD~$commit_count

