#!/bin/bash
# Author: Cliff Philip
# Date 4/13/2023

# Purpose sonar scaner installation on linux

echo "sonar scaner installation begins shortlty.....:"

sleep 3

cd /opt

echo "downloading the latest version of sonar scaner: ......"

sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.8.0.2856-linux.zip


sudo yum install unzip -y

echo "unziping sonar-scanner-cli-4.8.0.2856-linux.zip....."
sudo unzip sonar-scanner-cli-4.8.0.2856-linux.zip -y

ls

sleep 3

echo "removing sonar-scanner-cli-4.8.0.2856-linux.zip....."

sudo rm -rf sonar-scanner-cli-4.8.0.2856-linux.zip*

ls

sleep 3

echo "chaning sonar-scanner-cli-4.8.0.2856-linux to sonar-scanner....."

sudo mv sonar-scanner-4.8.0.2856-linux sonnar-scanner

ls /opt

sleep 3

echo "configuring sonar-scanner environment"

# sonar config global variable: SONAR_RUNNER_HOME
echo "please add the line'SONNAR_RUNNER_HOME=/opt/sonar-scanner' in your ~/.bash_profile file"
echo "please add '$SONAR_RUNNER_HOME' to the 'PATH' line in your ~/.bash_profile file"

sleep 2

echo "run the command 'source ~/.bash_profile'"

echo "After completing these steps, sonar-scanner should be ready for code scanning"
