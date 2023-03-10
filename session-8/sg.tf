    resource "aws_security_group" "main_sg" {   
    name        = "main"
    description = "Allow SSH inbound traffic"

    ingress {
        from_port        = 22
        to_port          = 22 # number
        protocol         = "tcp" # string
        cidr_blocks      = ["0.0.0.0/0"] # list of strings
    }

    ingress {
        from_port        = 80
        to_port          = 80
        protocol         = "tcp" # string
        cidr_blocks      = ["0.0.0.0/0"] # list of strings
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1" # string
        cidr_blocks      = ["0.0.0.0/0"] # list of strings
    }
    
    }


# Corrections:
# 1. Lower case
# 2. _ instead of -
# 3. Proper name for the second_label