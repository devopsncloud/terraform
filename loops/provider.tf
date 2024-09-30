terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.68.0"
    }
  }

backend "s3" {
  bucket         = "roboriya"
  key            = "terraform/production/terraform.tfstate"  # Replace with a meaningful path
  region         = "us-east-1"
  dynamodb_table = "roboriyas3Lock"
}

}


provider "aws" {
    region = "us-east-1"
} 



