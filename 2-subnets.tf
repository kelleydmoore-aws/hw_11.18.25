resource "aws_subnet" "public_a" {
  
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.5.1.0/24"
  availability_zone = "us-east-2a" # specify availability zone
  map_public_ip_on_launch = true # allow public IPs to be assigned

  tags = {
    
    Name = "public-subnet-us-east-2a"

  }
  
}

resource "aws_subnet" "public_b" {
  
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.5.2.0/24"
  availability_zone = "us-east-2b" # specify availability zone
  map_public_ip_on_launch = true # allow public IPs to be assigned

  tags = {
    
    Name = "public-subnet-us-east-2b"

  }

}

resource "aws_subnet" "public_c" {
  
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.5.3.0/24"
  availability_zone = "us-east-2c" # specify availability zone
  map_public_ip_on_launch = true # allow public IPs to be assigned

  tags = {
    
    Name = "public-subnet-us-east-2c"

  }

}

resource "aws_subnet" "private_a" {
  
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.5.11.0/24"
  availability_zone = "us-east-2a" # specify availability zone
  map_public_ip_on_launch = false # allow public IPs to be assigned

  tags = {
    
    Name = "private-subnet-us-east-2a"

  }

}

resource "aws_subnet" "private_b" {
  
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.5.12.0/24"
  availability_zone = "us-east-2b" # specify availability zone
  map_public_ip_on_launch = false # allow public IPs to be assigned

  tags = {
    
    Name = "private-subnet-us-east-2b"

  }

}

resource "aws_subnet" "private_c" {
  
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.5.13.0/24"
  availability_zone = "us-east-2c" # specify availability zone
  map_public_ip_on_launch = false # allow public IPs to be assigned

  tags = {
    
    Name = "private-subnet-us-east-2c"

  }

}
