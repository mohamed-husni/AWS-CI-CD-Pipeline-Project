#!/bin/bash
set -e

# Stop Apache2 if running
isExistApp="$(pgrep apache2 || true)"
if [[ -n $isExistApp ]]; then
  sudo systemctl stop apache2.service
  echo "Apache2 stopped."
fi

# Stop Tomcat9 if running
isExistApp="$(pgrep tomcat9 || true)"
if [[ -n $isExistApp ]]; then
  sudo systemctl stop tomcat9.service
  echo "Tomcat9 stopped."
fi
