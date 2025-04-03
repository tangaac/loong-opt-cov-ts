#!/bin/bash

WORK_DIR=$(pwd)
LLVM_DIR=$WORK_DIR/llvm
TEST_SUITE_DIR=$WORK_DIR/test-suite

LLVM_PROJECT_DIR=$LLVM_DIR/llvm-project
LLVM_TEST_SUITE_DIR=$TEST_SUITE_DIR/llvm-test-suite


git checkout master

cd $LLVM_PROJECT_DIR
git checkout main
git pull


cd $LLVM_TEST_SUITE_DIR
git checkout main
git pull


cd $WORK_DIR
git submodule update --remote

git add .
git commit -m "update submodule with upstream"
