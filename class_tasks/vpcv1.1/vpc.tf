resource "aws_vpc" "task_vpc" {     
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "terraform_vpc"
  }
} 