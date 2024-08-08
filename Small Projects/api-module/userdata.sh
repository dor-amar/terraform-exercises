#!/bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo docker run -d -p 80:80 nginx
