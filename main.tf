resource "aws_vpc" "main" {
    cidr_block = cidr
    enable_dns_hostnames = 
    instance_tenancy = "default"

    tags = {
        
    }
}