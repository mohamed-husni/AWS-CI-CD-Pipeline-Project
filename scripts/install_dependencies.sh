#!/bin/bash
set -e

echo "---- Updating package list ----"
sudo apt update -y

echo "---- Installing Tomcat9 ----"
sudo apt install -y tomcat9 tomcat9-admin

echo "---- Installing Apache2 ----"
sudo apt install -y apache2

echo "---- Enabling Apache modules ----"
sudo a2enmod proxy
sudo a2enmod proxy_http

echo "---- Creating Apache VirtualHost ----"
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

echo "---- Enabling new site and disabling default ----"
sudo a2ensite tomcat_manager.conf
sudo a2dissite 000-default.conf

echo "---- Restarting services ----"
sudo systemctl restart apache2
sudo systemctl restart tomcat9

echo "✅ Dependencies installed and Tomcat + Apache configured successfully!"
