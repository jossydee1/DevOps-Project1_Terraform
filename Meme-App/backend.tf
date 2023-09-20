terraform {
  backend "s3" {
    bucket = "devops-project001"
    key    = "backend/Meme-App.tfstate"
    region = "us-east-1"
    dynamodb_table = "devops-project001_DB"
  }
}