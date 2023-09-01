# Untuk Part ini anda bisa mengambilnya di console aws yang ada di web
provider "aws" {
  region  = "us-east-1"
  access_key = "AKIAU6IW7TXUS3IWXMQV" 
  secret_key = "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"
}
# Search On Documentation AWS (EC2 Resource aws_instance)
# ami = get fropm AMI ID on EC2 instance
# instance_type get from EC2 instance
# resource "aws_instance" "myfristServer" {
#   ami           = "ami-053b0d53c279acc90" 
#   instance_type = "t2.micro"
#    tags = {
#     #Name = "Ubuntu"
#   }
# }

# VPC
# Urutan Kode Tidak Mempengaruhi Pembuatan VPC yang mengenai ID
resource "aws_vpc" "first-vpc" {
  # cidr_block to determine network that we will use
  cidr_block = "10.0.0.0/16" 
  tags = {
    Name = "production"
  }
}

# aws_subnet
  resource "aws_subnet" "subnet-1" {
    # vpc_id : ketika kita belum tahu vpc id berapa, karena kita pertama kali buat maka cukup ambil dari 
    # id diatas. aws_vpc.first-vpc dan jangan lupa tambahkan id
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}