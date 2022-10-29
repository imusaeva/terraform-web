data "terraform_remote_state" "vpc_v3" {
  backend = "s3"
  config = {
    bucket = "aws-session-may2022-remote-backend"
    region = "us-east-1"
    key    = "vpc-web/terraform.tfstate"
  }
}
