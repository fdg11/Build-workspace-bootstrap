#!/bin/bash

set -e

count=$(find /workspace -type f | wc -l)
echo -e $count
if [ $count -eq 0 ]; then
git clone https://github.com/BlackrockDigital/startbootstrap-agency.git /workspace
cd /workspace
npm install
gulp dev &
nginx -g "daemon off;"
else
cd /workspace
gulp dev &
nginx -g "daemon off;"
fi