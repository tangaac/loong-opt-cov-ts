#!/bin/bash

WORK_DIR=$(pwd)
LLVM_DIR=$WORK_DIR/llvm
TEST_SUITE_DIR=$WORK_DIR/test-suite

BUILD_LLVM_DIR=$LLVM_DIR/build-llvm
BUILD_TEST_SUITE_DIR=$TEST_SUITE_DIR/build-test-suite

export PATH=$BUILD_LLVM_DIR/bin:$PATH

DST=$TEST_SUITE_DIR/$1

mkdir -p $DST

cd $BUILD_TEST_SUITE_DIR
echo "copy *.s files to $DST"
fd -es -x cp --parents {} $DST

# echo "copy *.ll files to $DST"
# fd -ebc -x llvm-dis {} -o "$DST/{//}/{/.}.ll"
echo "done"
