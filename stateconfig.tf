terraform {
  backend "s3" {
    region         = "eu-west-1"
    bucket         = "terraform-state"
    key            = "terraform.tfstate"
    encrypt        = "true"
    dynamodb_table = "terraform-state-lock"
  }
}
