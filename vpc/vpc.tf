resource "aws_vpc" "vpc_v3" {
  cidr_block = var.vpc_cidr
  tags       = merge(local.common_tags, { Name = replace(local.name, "rtype", "vpc") })
}