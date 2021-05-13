#!/bin/bash

sudo yum update -y
sudo amazon-linux-extras install nginx1 -y # Deploy nginx webserver on Amazon Linux
sudo systemctl start nginx
sudo systemctl status nginx
