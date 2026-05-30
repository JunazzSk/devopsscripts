#! /bin/bash
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.5.0.89998.zip
unzip sonarqube-10.5.0.89998.zip
sudo dnf install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-10.5.0.89998 -R
chmod 777 sonarqube-10.5.0.89998 -R
su - sonar
# use the below command manually after installation
#sh /opt/sonarqube-10.5.0.89998/bin/linux-x86-64/sonar.sh start
#echo "user=admin & password=admin"
