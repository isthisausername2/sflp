#!/bin/bash

echo "This script is to install docker on a Intel or AMD system"
sleep 2
echo "Running apt update"
apt update 
echo "Installing dependencys"
apt install apt-transport-https ca-certificates curl software-properties-common
echo "Adding docker key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
echo "Installing docker"
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
echo "Make sure ubuntu uses the docker repo insted of the ubuntu repo"
apt-cache policy docker-ce
echo "Installing docker"
apt install docker-ce
echo "Check to see if its working"
systemctl status docker
echo "Add user to docker group"
usermod -aG docker ${USER}

echo "Docker is now installed"

# The comands from this were "borowed" form DigitalOcean
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04