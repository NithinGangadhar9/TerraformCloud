data "template_file" "user_data" {
  template = file("/nginx.sh")
}

resource "aws_instance" "WebServer" {
    ami = "ami-0f75c2980c6a5851d"
    instance_type = "t2.medium"
    user_data = data.template_file.user_data.rendered

    tags = {
        Tool = "Terraform"
        Tier = "Nonp"
    }
  
}
