terraform {
	backend "s3" {
		bucket = "terraform-bucket-91288"
		region = "ca-central-1"
		key = "multiple_file.tfstate"
		}
}
