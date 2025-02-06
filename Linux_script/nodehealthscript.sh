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
echo "Disk space usage:"

df -h

echo "Memory usage:"

free -g

echo "Number of CPUs:"
nproc

echo "Processes containing 'kworker':"
ps -ef | grep kworker | awk '{print $2}'
