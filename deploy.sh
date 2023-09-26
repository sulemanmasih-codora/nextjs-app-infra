#!/bin/bash


cd /home/ubuntu/deploy_nextjs_app
git pull origin master
nvm use v16
yarn install &&
yarn build &&
pm2 restart next_hello_world_app
