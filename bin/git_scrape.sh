#!/bin/bash

# little thing to dump out my git repos in a file so I remember where they are

cd $HOME/projects

find . -type d -name .git -exec grep url {}/config \; > /tmp/git.repo.list

aws --profile=sotiroff-dump-writer s3 cp /tmp/git.repo.list s3://sotiroff-dump/
