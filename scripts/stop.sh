#!/bin/bash

echo "Stopping existing Spring Boot application..."

PID=$(pgrep -f buildright-app.jar)

if [ -n "$PID" ]; then
    echo "Killing process $PID"
    kill -9 $PID
else
    echo "No existing application process found"
fi

sleep 5