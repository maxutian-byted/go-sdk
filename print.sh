#!/bin/sh
cmd=`gh pr status --json mergeStateStatus -q .currentBranch.mergeStateStatus`
count=0
while [ $cmd -gt 1 ]
do
    let count+=1
    echo "no~"
    sleep 5
    cmd=`ps aux|grep processname|grep -v "grep"|wc -l`
done
echo "yes!"

{
  "createdBy": [],
  "currentBranch": {
    "state": "MERGED"
  },
  "needsReview": []
}
