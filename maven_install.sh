#!/bin/basystem
sudo yum update -y

# Install Java JDK
sudo yum install java-1.8.0-openjdk-devel -y

# Download Maven
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.1/binaries/apache-maven-3.9.1-bin.tar.gz

# Extract Maven
sudo tar -xf apache-maven-3.9.1-bin.tar.gz

# Move Maven to /usr/local
sudo mv apache-maven-3.9.1 /opt/maven/

# Set Maven environment variables
echo 'export M2_HOME=/opt/maven/apache-maven-3.8.4' >> ~/.bashrc
echo 'export PATH=$PATH:$M2_HOME/bin' >> ~/.bashrc
source ~/.bashrc

# Verify Maven installation
mvn -version