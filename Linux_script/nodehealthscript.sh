#!/bin/bash
#top line describes which shell need to execute the script


##############################
# Author: Swami
# Date: 06/02/2024  
#
# This script outputs the node health
#
# Version: v1
##############################

# set -x #Debug mode
# set -e # exit the script when there is a error
# set -o pipefail #when there is pipefail
# set -exo
echo "print the disk space"

df -h

echo "prints the memory"

free -g

echo "no of cpu"
nproc

echo "prints the processes"
ps -ef | grep kworker | awk -f " " '{print $2}'
