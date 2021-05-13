data "template_file" "user_data" {
  template = file("../Scripts/nginx.sh")
}

resource "aws_instance" "webserver" {
    ami = "ami-0f75c2980c6a5851d"
    instance_type = "t2.micro"
    user_data = data.template_file.user_data.rendered

    tags = {
        Tool = "Terraform"
        Tier = "Nonp"
    }
  
}
