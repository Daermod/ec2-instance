#!/bin/bash

# Update the instance
sudo apt update

# Install NGINX
sudo apt-get install -y nginx

# Start and enable NGINX
sudo systemctl enable nginx
sudo systemctl start nginx

# Setting a custom Index.HTML page
echo '<h3> Welcome to my EC2 Instance for the EC2 Instance DevOps Project on roadmap.sh!<h3>' | sudo tee /var/www/html/index.nginx-debian.html