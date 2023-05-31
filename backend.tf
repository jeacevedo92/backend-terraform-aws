terraform{
    backend "s3" {
      bucket = "terraform_backend"
      key = "dev"
      region = "us-east-2"
      encrypt = true
    }  
}