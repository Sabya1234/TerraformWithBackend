terraform {
  backend "s3" {
    encrypt = true
    bucket = "tfdemo-s3bucket"
    dynamodb_table = "tf-demo-lock-state"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }

}