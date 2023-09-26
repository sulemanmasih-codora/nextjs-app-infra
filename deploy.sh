#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

export NVM_DIR=$HOME/.nvm;
. $NVM_DIR/nvm.sh;

cd /home/ubuntu/nextjs-app-infra
git pull origin main
nvm install v16
nvm use v16
npm install --global yarn
yarn
yarn build
npm install pm2 -g
pm2 delete nextjs-app
pm2 start npm --name "nextjs-app" -- start
