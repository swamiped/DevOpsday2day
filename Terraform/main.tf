terraform{
    required_providers{
        # installs the aws provider into the system
         aws = {
            source = "hashicorp/aws"
            version = "~> 5.84.0"
         }
    
    }

    # we mentioned terraform required version here
    required_version = ">=v1.10.5"
    
}

# we are providing the region to create instance i.e. ap-south-1
provider "aws" {
    region  = "ap-south-1"
}

# we are giving instance ami, tags and intance type to create a baisc ec2 instance
# aws_instance is provider and resource type, myawsinstance is resourcename 

resource "aws_instance" "myawsinstance" {
    
    ami = "ami-0ddfba243cbee3768"
    instance_type = "t2.micro"

    tags = {
        Name= "terraform_instance"
    }
}
