#!/bin/bash

sshpass -p ${stagingPwd} ssh -o StrictHostKeyChecking=no ${stagingUser}@${stagingIp} << EOF

echo "1. pull code from bitbucket......"
cd ${stagingPath}
sudo su
git checkout --force development
git reset --hard
git clean -fd
git pull

echo '----------------------------------Done!----------------------------------'
EOF