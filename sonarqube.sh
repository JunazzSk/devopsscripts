#! /bin/bash
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.3.0.120487.zip
unzip sonarqube-26.3.0.120487.zip
sudo dnf install java-21-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-26.3.0.120487 -R
chmod 777 sonarqube-26.3.0.120487 -R
su - sonar
# use the below command manually after installation
#sh /opt/sonarqube-26.3.0.120487/bin/linux-x86-64/sonar.sh start
#echo "user=admin & password=admin"
