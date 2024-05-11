provider "aws" {
    region = "us-east-1"
}

#Variables created
#terraform.tfvars separate file to define variable values, but not on the GitHub Repository
variable vpc_cidr_block {}
variable subnet_cidr_block {}
variable avail_zone {}
variable env_prefix {}

#Creating the AWS VPC
resource "aws_vpc" "myapp-vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
        Name: "${var.env_prefix}-vpc"
    }
}

#Creating the Subnet for the VPC
resource "aws_subnet" "myapp-subnet-1" {
    vpc_id = aws_vpc.myapp-vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.avail_zone
    tags = {
        Name: "${var.env_prefix}-subnet-1"
    }
}

#Creating the Route Table and assigning the Internet Gateway
resource "aws_route_table" "myapp-route-table" {
    vpc_id = aws_vpc.myapp-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.myapp-igw.id #Internet Gateway
    }
    tags = {
        Name: "${var.env_prefix}-rtb"
    }
}

#Creating the Internet Gateway
resource "aws_internet_gateway" "myapp-igw" {
    vpc_id = aws_vpc.myapp-vpc.id
    tags = {
        Name: "${var.env_prefix}-igw"
    }
}