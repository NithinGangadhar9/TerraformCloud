resource "aws_instance" "webserver" {
    ami = "ami-0f75c2980c6a5851d"
    instance_type = "t2.micro"
    user_data = "${file("./nginx.sh")}"
  
}
