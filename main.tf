 resource "aws_s3_bucket" "b" {
  bucket = "my-tf-deepsikha1234-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
 }  

	variable "AWS_REGION" {
	  default = "ap-southeast-2"
	}

	provider "aws" {
		region = "${var.AWS_REGION}"
	}
