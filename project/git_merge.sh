#! /bin/bash

branch=$(git show :/^Merge | egrep -i merge | grep -i / | sed 's/.*\///')
last_merge=$(git show :/^Merge | grep commit | sed 's/commit //')
last_commit=$(git show | grep commit | sed 's/commit //')

if [ "$last_merge" == "$last_commit" ]; then
   echo "$branch merged to master"
else
   echo "someone messed with master"
fi
