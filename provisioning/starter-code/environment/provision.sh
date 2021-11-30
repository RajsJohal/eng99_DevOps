#!/bin/bash

#update, upgrade, install nginx
sudo apt-get update -y

sudo apt-get upgrade -y

#install nginx
sudo apt-get install nginx -y

#install nodejs version 6
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install nodejs -y

#install npm
sudo npm install pm2 -g