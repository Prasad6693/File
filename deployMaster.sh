#!/bin/bash

sshpass -p ${pwd} ssh -o StrictHostKeyChecking=no ${user}@${ip} << EOF

echo "1. pull code from bitbucket......"
cd ${path}
sudo su
git checkout --force master
git reset --hard
git clean -fd
git pull

echo '----------------------------------Done!----------------------------------'
EOF