#! /bin/bash

# Check that we are in a git repository, exit if not



SCRIPT_DIR="$(dirname "${BASH_SOURCE[0]}")"

cat $SCRIPT_DIR/witch_ascii.txt

echo "Step 1: Clean up branches already merged to master"

git branch --merged master | egrep -v "(^\*|master|dev)"