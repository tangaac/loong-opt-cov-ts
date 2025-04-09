#/bin/bash
LLVM_SOURCE_DIR=$(pwd)/llvm/llvm-project

cd $LLVM_SOURCE_DIR
BRANCH_NAME=$(date +%s)
gh pr checkout $1 -b $1-$BRANCH_NAME
commit_count=$(git rev-list main.. --count)
git checkout HEAD~$commit_count

