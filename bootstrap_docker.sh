#!/bin/bash

# Initialize Docker
echo "Docker starting. Please wait.."
systemctl start docker && systemctl enable docker > /dev/null 2>&1
docker run hello-world > /dev/null 2>&1
if [ $? == 0 ];then
    echo "Docker running successfully and Tested."
else
    echo "Docker test failed. Test again by : docker run hello-world."
fi    
chmod 666 /var/run/docker.sock > /dev/null 2>&1

