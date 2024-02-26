#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
echo 'Hello from the remote instance'
sudo apt update -y                  # Update package lists (for ubuntu)
sudo apt-get install -y python3-pip # Example package installation
cd /home/ubuntu
sudo pip3 install flask
sudo python3 app.py