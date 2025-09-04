#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
sudo yum install wget -y
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
unzip sonarqube-8.9.6.50800.zip
yum install java-17-amazon-corretto -y
useradd sonar
sudo groupadd sonar
sudo usermod -g sonar sonar
chown sonar:sonar sonarqube-8.9.6.50800 -R
chmod 777 sonarqube-8.9.6.50800 -R
su - sonar

#run this on server manually
cd /opt/sonar*/bin/linux*
sh sonar.sh start
echo "user=admin & password=admin"
