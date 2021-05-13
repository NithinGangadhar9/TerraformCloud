#!/bin/bash

sudo apt update
sudo apt install nginx

# List the application configurations that ufw 
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
