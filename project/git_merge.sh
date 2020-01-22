#! /bin/bash

cd git-repo-master/project
branch=$(git show :/^Merge | egrep -i merge | grep -i / | sed 's/.*\///')
last_merge=$(git show :/^Merge | grep commit | sed 's/commit //')
last_commit=$(git show | grep commit | sed 's/commit //')

if [ "$last_merge" == "$last_commit" ]; then
   echo "The last branch merged to master was $branch"
else
   echo "A change was merged directly to master"
fi
