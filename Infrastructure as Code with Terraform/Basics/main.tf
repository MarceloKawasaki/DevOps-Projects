provider "aws" {
    region = "eu-central-1"
}

variable "cidr-blocks" {
    description = "cidr blocks and name tags for vpc and subnets"
    type = list(object({
        cidr_block = string
        name = string
    }))
}

resource "aws_vpc" "development-vpc" {
    cidr-block = var.cidr_blocks[0].cidr_block
    tags = {
        Name: var.cidr_blocks[0].name
    }
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.vpc_id
    cidr-block = var.cidr_blocks[1].cidr_block
    availability_zone = "eu-central-1a"
    tags = {
        Name: var.cidr_blocks[1].name
    }
}