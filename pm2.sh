#!/bin/bash
echo Hello World
pm2 stop all
pm2 delete app.js
pm2 start app.js
