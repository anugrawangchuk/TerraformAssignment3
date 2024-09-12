terraform {
  backend "s3" {
    bucket         = "grace-ass3"  
    key            = "terraform.tfstate"  
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "Assignment3"  
  }
}

