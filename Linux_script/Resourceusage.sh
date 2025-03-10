#!/bin/bash


#######################################
# Author: swami
# Date: 08-02-2025
# This script is used to get the resource usage
#######################################

# Inorder to run this script you need to install AWS CLI and configured with your account. use "aws configure" to configure the access keys  


# list AWS S3 buckets
set -x # to enable debugging
set -e # to exit the script if any command fails
echo " list s3 instance"
aws s3 ls

# list AWS EC2 instances
echo " list ec2 instances imageid"
aws ec2 describe-instances #| jq '.Reservations[].Instances[].InstanceId #enable this line to get only instance id

# list IAM users
echo "list IAM users"
aws iam list-users | jq '.Users[].UserName'

# list AWS lambda functions
echo "list lambda functions"
aws lambda list-functions 
 # crontab -e # to create a cronjob 
 # * * * * * /path/to/command # to specify the schedule and script location