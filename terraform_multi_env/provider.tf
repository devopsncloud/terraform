terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.68.0"
    }
  }

backend "s3" {
  
}

}


provider "aws" {
    region = "us-east-1"
} 



