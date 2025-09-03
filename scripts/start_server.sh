#!/bin/bash
set -e

echo "---- Starting Tomcat9 ----"
sudo systemctl start tomcat9.service
sudo systemctl enable tomcat9.service

echo "---- Starting Apache2 ----"
sudo systemctl start apache2.service
sudo systemctl enable apache2.service

echo "✅ Tomcat9 and Apache2 started and enabled successfully."
