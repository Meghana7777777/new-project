provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
    Environment = var.environment
      Solution = var.solution
    }
  }
}


terraform {
  backend "s3" {
    key            = "environments/sales/dev-sales-01/terraform.tfstate"
    region         = "us-east-1"
    bucket         = "practice-s3-1"
    encrypt        = true
  }
}
