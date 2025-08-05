#!/bin/bash
# install_dependencies.sh

# Update system packages
sudo yum update -y

# Install Apache if not already installed
sudo yum install -y httpd

# Start and enable Apache
sudo systemctl start httpd
sudo systemctl enable httpd

# Set proper permissions
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html

echo "Dependencies installed successfully"
