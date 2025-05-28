#!/bin/bash

WORK_DIR=$(pwd)
LLVM_DIR=$WORK_DIR/llvm
TEST_SUITE_DIR=$WORK_DIR/test-suite

BUILD_LLVM_DIR=$LLVM_DIR/build-llvm
BUILD_TEST_SUITE_DIR=$TEST_SUITE_DIR/build-test-suite
LLVM_TEST_SUITE_DIR=$TEST_SUITE_DIR/llvm-test-suite
BIN_DIR=$BUILD_LLVM_DIR/bin

rm -rf $BUILD_TEST_SUITE_DIR
mkdir -p $BUILD_TEST_SUITE_DIR

cd $BUILD_TEST_SUITE_DIR
cmake $LLVM_TEST_SUITE_DIR -Wno-dev -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=$BIN_DIR/clang -DCMAKE_CXX_COMPILER=$BIN_DIR/clang++ -G Ninja \
	-DCMAKE_C_FLAGS_RELEASE="$FLAG -fuse-ld=mold -save-temps=obj -w -Wno-unused-command-line-argument -DNDEBUG -O3 -Qn -Wno-builtin-macro-redefined"  \
	-DCMAKE_CXX_FLAGS_RELEASE="$FLAG -fuse-ld=mold -save-temps=obj -w -Wno-unused-command-line-argument -DNDEBUG -O3 -Qn -Wno-builtin-macro-redefined"
ninja
