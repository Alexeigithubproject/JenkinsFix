#!/bin/bash

#Fetch external IP using python script
EXTERNAL_IP=$(python3 /root/fetch_ip.py)

#Define Jenkins URL using the fetched external IP
JENKINS_URL="http://$EXTERNAL_IP:8080"

#update Jenkins configuration using the jenkins URL

sudo sed -i "s|<jenkinsUrl>.*</jenkinsUrl>|<jenkinsUrl>$JENKINS_URL</jenkinsUrl>|g"

#Restart Jenkins service to apply changes
sudo systemctl restart jenkins

