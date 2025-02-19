terraform{
    required_providers{
         aws = {
            source = "hashicorp/aws"
            version = "~> 5.84.0"
         }
    
    }
    required_version = ">=v1.10.5"
    
}
provider "aws" {
    region  = "ap-south-1"
}
resource "aws_instance" "myawsinstance" {
    
    ami = "ami-0ddfba243cbee3768"
    instance_type = "t2.micro"

    tags = {
        Name= "terraform_instance"
    }
}
