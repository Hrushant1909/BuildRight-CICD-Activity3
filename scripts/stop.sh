#!/bin/bash

echo "Stopping existing applications..."

pkill -f buildright-app.jar || true
pkill -f java || true
pkill -f python || true
pkill -f node || true

sleep 10