#!/bin/bash

echo "Starting Spring Boot application..."

cd /home/ec2-user/app

nohup java -jar buildright-app.jar > app.log 2>&1 &