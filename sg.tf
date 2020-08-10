resource "aws_security_group" "example1" {
	name = "example1"
	description = "this is for the terraform demo"

	ingress {
		to_port = "80"
		from_port = "80"
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]

		}
}
