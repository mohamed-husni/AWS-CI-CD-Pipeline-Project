#!/bin/bash
set -e

echo "---- Stopping Apache2 ----"
if systemctl is-active --quiet apache2; then
  sudo systemctl stop apache2.service
fi

echo "---- Stopping Tomcat9 ----"
if systemctl is-active --quiet tomcat9; then
  sudo systemctl stop tomcat9.service
fi

echo "✅ Tomcat9 and Apache2 stopped successfully."
