resource "aws_launch_template" "web_tier" {
  name = "web-app-template"
  description = "launch template for the web tier's apps"
  image_id = "ami-083b3f53cbda7e5a4" # ami for us-east-2
  instance_type = "t3.micro"
  # key_name =
  vpc_security_group_ids = [aws_security_group.web_tier.id]
  
  # network_interfaces {
  #  associate_public_ip_address = false
  #  security_groups = [ aws_security_group.web_tier.id ]
  # }

  # user_data = file("./user_data.sh")
  user_data = filebase64("./user_data.sh")

  tag_specifications {
    resource_type = "instance"
    tags = {
      ManagedBy = "terraform"
    }
  }
  
  lifecycle {
    create_before_destroy = true
  }
}



# name
# description
# ami
# instance type
# key
# vpc
# subnets
# security group
# public IP true/false
# user data

