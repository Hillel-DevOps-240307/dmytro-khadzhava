#!/bin/bash

# Встановлення значень змінних
VPC_CIDR="192.168.0.0/24"
PUBLIC_SUBNET_CIDR=""
PRIVATE_SUBNET_CIDR=""

# Створення VPC
vpc_id=$(aws ec2 create-vpc --cidr-block $VPC_CIDR --output text --query 'Vpc.VpcId')
echo "VPC created with ID: $vpc_id"
