#!/bin/bash

#############################
# Author: Debarshi
# Date: 11th-Jan
# Version: v1
#

# This script report the AWS resource usage
#
set -x
# AWS S3
# AWS Ec2
# AWS Lambda
# AWS IAM User

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > report.txt

# list ec2 instance
echo "Print list of ec2"
# aws ec2 describe-instances if i need the whole dat
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> report.txt

# list aws lambda 
echo "Print list lambda functions"
aws lambda list-functions >> report.txt

#list IAM users
echo "Print the list of IAM users"
aws iam list-users
