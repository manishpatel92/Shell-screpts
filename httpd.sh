#!/bin/bash

# To verifaid the server is available or NOT

which httpd > output1.txt
if grep -q "/sbin/httpd" output1.txt;
then
        echo "The HTTPD is alrady Install in your machine"
else
        sudo yum install httpd -y
echo "Your httpd service is installing NOW"
fi
sudo rm -rf output1.txt

# for stop and start the httpd server

service httpd status > output.txt
if grep -q "running" output.txt;
then
        echo "the httpd service is running"
else
service httpd start
        echo "the service is stop it is not running the service is started in few second"
fi
 sudo rm -rf output.txt
