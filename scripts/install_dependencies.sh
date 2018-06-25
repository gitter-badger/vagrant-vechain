#!/bin/sh
#Author: @kanr

### Update System and install dependencies
apt-get update
apt-get -y install build-essential libgflags-dev libsnappy-dev zlib1g-dev libbz2-dev liblz4-dev git mercurial tree
apt-get install git -y
