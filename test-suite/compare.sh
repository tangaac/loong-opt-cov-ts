#!/bin/bash

WORK_DIR=$(pwd)
TEST_SUITE_DIR=$WORK_DIR/test-suite
RESULTS_DIR=$TEST_SUITE_DIR/result-$1

BRANCH_NAME=pr-$1-$(date +%s)
git checkout -b $BRANCH_NAME


mkdir -p $RESULTS_DIR

cd $TEST_SUITE_DIR

diff -rq before/ after/ | rg differ | awk '{print $2}' | while read -r file; do
    dest="$RESULTS_DIR/${file#before/}"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest"
done

cd $RESULTS_DIR
git add .
git commit -m "files before pr $1"

cd $TEST_SUITE_DIR

diff -rq before/ after/ | rg differ | awk '{print $4}' | while read -r file; do
    dest="$RESULTS_DIR/${file#after/}"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest"
done

cd $RESULTS_DIR
git add .
git commit -m "files after pr $1"


git push --set-upstream origin $BRANCH_NAME

current_hash=$(git rev-parse HEAD)

echo "****************************************************************"
echo "To see difference: "
echo "https://github.com/tangaac/loong-opt-cov-ts/commit/$current_hash"
echo ""
echo "****************************************************************"

git checkout master
