provider "aws" {
  region  = "us-east-1"
  access_key = "AKIAU6IW7TXUS3IWXMQV"
  secret_key = "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"
}
# Search On Documentation AWS (EC2 Resource aws_instance)
# ami = get fropm AMI ID on EC2 instance
# instance_type get from EC2 instance
resource "aws_instance" "myfristServer" {
  ami           = "ami-053b0d53c279acc90" 
  instance_type = "t2.micro"
   tags = {
    #Name = "Ubuntu"
  }
}

# resource "<provider>_<resource_type>" "name" {
#     config options..........
#     key ="value"
#     key2 ="anothervalue"
# }