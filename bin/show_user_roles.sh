#!/bin/bash

if [ ! $1 ]; then
        echo "Usage: $0 username"
        exit 1
fi


echo -e "$1 belongs to;"
for groupname in $(aws iam list-groups-for-user --user-name $1 --query "Groups[*].GroupName" --output text); do
        echo -e "\nGroup: $groupname"
        for grouppolicy in $(aws iam list-group-policies --group-name $groupname --query "PolicyNames" --output text); do
                echo -e "\tGroup Policy: $grouppolicy"
                for policy in $(aws iam get-group-policy --group-name $groupname --policy-name $grouppolicy --query "PolicyDocument.Statement[*].Resource" --output text); do
                        echo -e "\t\tResource: $policy"
                done
        done
done
