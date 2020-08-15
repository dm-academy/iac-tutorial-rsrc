#!/bin/bash
set -e
echo "  ----- install node, npm, git -----  "
apt-get update
apt-get install -y nodejs npm git

echo "  ----- download, initialize, and run app -----  "
git clone https://github.com/dm-academy/node-svc-v1
cd node-svc-v1
git checkout 02
npm install
npm install express 
nodejs server.js &
