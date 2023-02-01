#!/bin/bash

sudo yum update -y                                     # UPDATE
sudo amazon-linux-extras install java-openjdk11 -y     # INSTALL JAVA
sudo yum install git -y                                # INSTALL GIT
sudo yum install mysql -y                              # INSTALL MYSQL
cd /mnt/                                               # (we can install Manev anywhere in EC2)
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.7/binaries/apache-maven-3.8.7-bin.zip
sudo unzip apache-maven-3.8.7-bin.zip
sudo rm -rf apache-maven-3.8.7-bin.zip

cd /home/ec2-user
echo "export MAVEN_HOME=/mnt/apache-maven-3.8.7" >> .bashrc
echo "export M2_HOME=/mnt/apache-maven-3.8.7" >> .bashrc
echo "export M2=/mnt/apache-maven-3.8.7/bin" >> .bashrc
echo "export PATH=/mnt/apache-maven-3.8.7/bin:$PATH" >> .bashrc

sudo init 6
