#!/bin/bash

cd /home/ec2-user
cd /mnt/
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.zip
sudo unzip apache-tomcat-9.0.71.zip
sudo rm -rf apache-tomcat-9.0.71.zip
sudo chmod -R 777 apache-tomcat-9.0.71/
cd apache-tomcat-9.0.71/
cd bin/
./startup.sh

cd /home/ec2-user
cd /mnt/
sudo git clone https://github.com/Shantanumajan6/project.git
sudo chmod -R 777 project/
cd project
mvn clean install
cd target/
sudo cp LoginWebApp.war /mnt/apache-tomcat-9.0.71/webapps/
cd /mnt/apache-tomcat-9.0.71/
cd bin/
./startup.sh
