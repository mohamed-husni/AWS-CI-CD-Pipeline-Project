#!/bin/bash
set -e

# Update package list
sudo apt update -y

# Install Tomcat (Ubuntu provides tomcat9 in repos)
sudo apt install -y tomcat9 tomcat9-admin

# Install Apache2 (httpd equivalent)
sudo apt install -y apache2

# Enable required Apache modules for proxying
sudo a2enmod proxy
sudo a2enmod proxy_http

# Create Apache virtual host for Tomcat
sudo tee /etc/apache2/sites-available/tomcat_manager.conf > /dev/null <<EOF
<VirtualHost *:80>
    ServerAdmin root@localhost
    ServerName app.nextwork.com

    ProxyRequests Off
    ProxyPreserveHost On
    ProxyPass / http://localhost:8080/husni-web-project/
    ProxyPassReverse / http://localhost:8080/husni-web-project/
</VirtualHost>
EOF

# Enable new site config
sudo a2ensite tomcat_manager.conf

# Disable default site (optional but recommended)
sudo a2dissite 000-default.conf

# Restart Apache and Tomcat
sudo systemctl restart apache2
sudo systemctl restart tomcat9

echo "Dependencies installed and Tomcat + Apache configured successfully!"
