/*

terraform {
  backend "s3" {
    bucket         = "your bucket name"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "your dynameDB table name"   #
  }
}

*/