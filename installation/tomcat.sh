#!/bin/bash

sudo apt update 
#sudo apt install default-jdk #only if java is not installed
cd /opt
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.55/bin/apache-tomcat-9.0.55.tar.gz
sudo tar -xvf apache-tomcat-9.0.55.tar.gz
sudo rm apache-tomcat-9.0.55.tar.gz
sudo mv apache-tomcat-9.0.55 tomcat
sudo chmod 777 -R /opt/tomcat
sudo chmod 777 -R /opt/tomcat
sudo chown ubuntu -R /opt/tomcat
sh /opt/tomcat/bin/startup.sh
# create a soft link to start and stop tomcat
sudo ln -s /opt/tomcat/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat