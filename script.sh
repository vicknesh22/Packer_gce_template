#############to install the required softwares
#!/bin/bash -x
sudo apt update -y
sudo apt-get install default-jre default-jdk -y
sudo apt install wget -y
sleep 5
SET JAVA_HOME=usr/lib/jvm/java-11-openjdk-amd64/bin/
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo  deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install jenkins -y
sudo systemctl enable jenkins
