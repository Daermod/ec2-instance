#!/bin/bash

# Install NGINX

sudo apt update
sudo apt-get install -y nginx

# Writes the HTML file to the default HTML file within NGINX
cat << EOF > /var/www/html/index.html
${html_content}
EOF

sudo systemctl start nginx
sudo systemctl enable nginx