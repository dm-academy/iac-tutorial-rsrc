#!/bin/bash
set -e  # exit immediately if anything returns non-zero. See https://www.javatpoint.com/linux-set-command

echo "  ----- download, initialize, and run app -----  "
git clone https://github.com/dm-academy/node-svc-v1
cd node-svc-v1
git checkout 02a

npm install express --save
npm install node-fetch --save
npm install
