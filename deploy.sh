#!/bin/bash


cd /home/ubuntu/nextjs-app-infra
git pull origin main
nvm use v16
yarn install &&
yarn build &&
pm2 restart next_hello_world_app
