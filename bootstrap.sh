#!/bin/bash

# Install Docker 
echo "Installing Docker. Please wait.."
yum install epel-release yum-utils device-mapper-persistent-data lvm2 -y > /dev/null 2>&1
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo > /dev/null 2>&1
yum install docker-ce docker-ce-cli containerd.io -y > /dev/null 2>&1

