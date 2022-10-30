data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "template_file" "userdata" {
  template = file("userdata.sh")
  vars = {
    environment = var.env
  }
}

data "terraform_remote_state" "vpc_v3" {
  backend = "s3"
  config = {
    bucket = "aws-session-may2022-remote-backend"
    region = "us-east-1"
    key    = "vpc-web/terraform.tfstate"
  }
}

data "terraform_remote_state" "alb_tg" {
  backend = "s3"
  config = {
    bucket = "aws-session-may2022-remote-backend"
    region = "us-east-1"
    key    = "alb_v2/terraform.tfstate"
  }
}
