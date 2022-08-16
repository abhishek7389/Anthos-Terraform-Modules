terraform {
  backend "gcs" {
    bucket = "<your backend bucket name>"
    prefix = "your path prefix, where you want to store your state file"
  }
}

