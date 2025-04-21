resource "aws_vpc" "main" {
    cidr_block = cidr
    enable_dns_hostnames = 
    instance_tenancy = "default"

    tags = {

    }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    var.common_tags,
    var.igw_tags,
    {
      Name = local.resource_name
    }
  )
}
