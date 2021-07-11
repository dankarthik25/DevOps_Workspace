#!/bin/bash

#
# sudo su -   file should be
#
chmod -R 777 /opt/

mkdir -p /opt/softwares
cd /opt/softwares
mkdir -p deploy

# updated for jdk 8u131
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz"

# extract tar file
tar -xvzf jdk-8u131-linux-x64.tar.gz
rm -rf jdk-8u131-linux-x64.tar.gz

echo "# JAVA ENVIRONmENT VARIABLES" >> ~/.bash_profile
echo "export JAVA_HOME=/opt/softwares/jdk1.8.0_131">> ~/.bash_profile
echo "export PATH=\$PATH:/opt/softwares/jdk1.8.0_131/bin">> ~/.bash_profile

source ~/.bash_profile
java -version


wget http://apachemirror.wuchna.com/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
tar -xvzf apache-maven-3.6.3-bin.tar.gz
rm -rf apache-maven-3.6.3-bin.tar.gz

echo "# JAVA ENVIRONmENT VARIABLES" >> ~/.bash_profile
echo "export M2_HOME=/opt/softwares/apache-maven-3.6.3">> ~/.bash_profile
echo "export PATH=\$PATH:/opt/softwares/apache-maven-3.6.3/bin">> ~/.bash_profile

source ~/.bash_profile
mvn -version

echo "---------------------------------------------------"
echo "     Installation"
echo "---------------------------------------------------"
java -version
echo "---------------------------------------------------"
echo "     Installation"
echo "---------------------------------------------------"
mvn -version
echo "---------------------------------------------------"


#yum install git -y

#wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.31/bin/apache-tomcat-9.0.31.tar.gz
#tar -xvzf apache-tomcat-9.0.31.tar.gz
#rm -rf apache-tomcat-9.0.31.tar.gz


#cd /opt/softwares/apache-tomcat-9.0.31/bin
#sh startup.sh
#sh shutdown.sh

# ec2-3-132-215-209.us-east-2.compute.amazonaws.com
#
# ssh -i apple01.pem aws_installation.sh ec2-user@ec2-3-132-215-209.us-east-2.compute.amazonaws.com
#
# scp -i "apple01.pem" ec2-user@ec2-13-58-225-96.us-east-2.compute.amazonaws.com:
