terraform {
    backend "s3" {
       bucket = "state-lock80"
       dynamodb_table = "state-lock" 
       key= "global/mystatefile/terraform.tfstate"
       region = "us-east-2"
       encrypt = true
    }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }

  }
}

provider "aws" {
  region  = "us-east-2"
  profile = "default"
}
