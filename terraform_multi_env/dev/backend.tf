bucket         = "roboriya-backend-state-dev"
  key            = "terraform_multi_env/dev/terraform.tfstate"  # path where it needs to be stored
  region         = "us-east-1"
  dynamodb_table = "roboriya-state-lock-dev"