#!/bin/bash
set -e  # exit immediately if anything returns non-zero. See https://www.javatpoint.com/linux-set-command

echo "  ----- install node, npm, git -----  "
apt-get update
apt-get install -y nodejs npm git

