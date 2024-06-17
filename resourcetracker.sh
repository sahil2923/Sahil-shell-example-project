#!/bin/bash
#
#####################
# Author: Sahil
# Date: 10-06-2024
#
# Version : v1
#
# this script will report the aws resource usage
# ##########################
#
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM
set -x
# 
# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

#list Ec2
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda
echo "print list of lambda  functions"
aws lambda list-functions

#list IAM
echo "print list of IAM Users"
aws iam list-users

