#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#install pm2 a production process mgr for node.js w built-in load balancer
sudo npm install -g pm2
#stop any instance of our app currently running
pm2 stop example_app
#change dir into folder where app downloaded
cd ExampleApplication2/
#install app dependencies
npm install
#start app w process name example_app using pm2
pm2 start ./bin/www --name example_app