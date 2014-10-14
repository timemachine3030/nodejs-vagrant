#!/bin/bash

# Modified from https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager
apt-get update
apt-get install -y python-software-properties python g++ make
add-apt-repository -y ppa:chris-lea/node.js
apt-get update
#apt-get install -y nodejs
apt-get install -y nodejs=0.10.32-1chl1~precise1
# Pin to the exact version above, so it's not auto upgraded by apt-get
echo "nodejs hold" | dpkg --set-selections
