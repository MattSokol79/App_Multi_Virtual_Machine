#!/bin/bash

# Update the sources list
sudo apt-get update -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

sudo apt-get install nginx -y

# DB HOST for Development Environment (Virtual machines)
echo 'export DB_HOST=mongodb://192.168.10.200:27017/posts' >> ~/.bashrc

cd /home/ubuntu/app

sudo npm install
sudo pm2 start app.js
sudo systemctl restart nginx