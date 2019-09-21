#!/bin/bash

# $1 filename having the branched line by line
# $2 location where the script to be executed
# execute bash ./branch-cleanup.sh /Users/pradheep/Workspace/github-scripts/branch-to-delete.txt /Users/pradheep/soba

echo $PWD
cd $2
echo $PWD

while IFS= read -r line; do
    git branch -d $line
done < "$1"