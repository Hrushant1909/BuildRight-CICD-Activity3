#!/bin/bash

echo "Stopping application..."

pkill -f buildright-app.jar || true

sleep 5