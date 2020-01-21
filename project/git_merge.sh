#! /bin/bash

branch=$(git show :/^Merge | egrep -i merge | grep -i / | sed 's/.*\///')
echo "$branch merged to master"
