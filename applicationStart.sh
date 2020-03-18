#!/bin/bash
cd /home/ubuntu
sudo chown -R ubuntu:ubuntu /home/ubuntu/
source /etc/profile
sudo chmod +x /home/ubuntu/webapp-0.0.1-SNAPSHOT.jar
#sudo kill  $(cat /home/ubuntu/pid.file)
sudo kill -9 $(sudo lsof -t -i:8080)
nohup java -jar /home/ubuntu/webapp-0.0.1-SNAPSHOT.jar --server.port=8080 > /home/ubuntu/output.txt 2>&1 &
#echo $! > /home/ubuntu/pid.file