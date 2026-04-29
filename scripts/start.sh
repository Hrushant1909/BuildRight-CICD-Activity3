#!/bin/bash

echo "Starting Spring Boot application..."

cd /home/ec2-user/app

# Stop old process if somehow still running
PID=$(pgrep -f buildright-app.jar)

if [ -n "$PID" ]; then
    echo "Stopping old process $PID"
    kill -9 $PID
fi

# Start application properly
/usr/bin/nohup /usr/bin/java -jar /home/ec2-user/app/buildright-app.jar > /home/ec2-user/app/app.log 2>&1 &

sleep 20

echo "Application started successfully"