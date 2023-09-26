#!/bin/bash


cd /home/ubuntu/nextjs-app-infra
git pull origin main
yarn build &&
pm2 restart next_hello_world_app
