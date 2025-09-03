#!/bin/bash
set -e

# Start and enable Tomcat 9
sudo systemctl start tomcat9.service
sudo systemctl enable tomcat9.service

# Start and enable Apache2
sudo systemctl start apache2.service
sudo systemctl enable apache2.service

echo "Tomcat9 and Apache2 started and enabled successfully."
