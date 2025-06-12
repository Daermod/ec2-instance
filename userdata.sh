#!/bin/bash

# Update the instance
sudo apt update

# Install NGINX
sudo apt install nginx

# Start and enable NGINX
sudo systemctl enable nginx
sudo systemctl start nginx

# Setting a custom Index.HTML page
echo "<h3> Welcome to my EC2 Instance for the EC2 Instance DevOps Project on roadmap.sh!<h3>" > /var/www/html/index.html