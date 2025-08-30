#!/bin/bash
#Downloading Packages

echo "Downloading required Packages:"
sudo yum install wget unzip httpd -y > /dev/null

sudo systemctl start httpd
sudo systemctl enable httpd


echo "Downloading .zip template from tooplate:"

mkdir -p /tmp/webfiles > /dev/null
cd /tmp/webfiles
wget $1 >/dev/null
#wget https://www.tooplate.com/zip-templates/2139_neural_portfolio.zip


echo "Unzipping:"
unzip $2.zip >/dev/null
#unzip 2139_neural_portfolio.zip

sudo cp -r $2/* /var/www/html/
#sudo cp -r 2139_neural_portfolio/* /var/www/html/

systemctl restart httpd

echo "Cleaning up!"
rm -rf /tmp/webfiles


echo "Checking Status of Httpd!"
sudo systemctl status httpd


echo "Contents of /var/www/html:"


echo "You are all set!"
