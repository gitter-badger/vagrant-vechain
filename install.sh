#!/bin/sh
#Author: @mirei83,@kanr

## Set environment paths
#export PATH=$PATH:/usr/local/go/bin
#export GOPATH=/home/vagrant/go
#mkdir -p $GOPATH/src/github.com/vechain/thor

# Install to a custom location
#export GOROOT=$HOME/go1.X
#export PATH=$PATH:$GOROOT/bin

### Update System and install dependencies
#apt-get update
#apt-get -y install build-essential libgflags-dev libsnappy-dev zlib1g-dev libbz2-dev liblz4-dev git mercurial tree
#echo 'Installing git'
#apt-get install git -y

### Install go
#echo "########################"
#echo "Installing go"
#echo "########################"
#cd ~
#wget https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz
#tar -C /usr/local -xzf go1.10.3.linux-amd64.tar.gz
#chmod +x /usr/local/go/bin/go
#rm go1.10.3.linux-amd64.tar.gz



#cd /usr/local/bin/
#wget https://github.com/golang/dep/releases/download/v0.3.2/dep-linux-amd64
#ln -s dep-linux-amd64 dep
#chmod +x /usr/local/bin/*


### Install VeChain
echo "########################"
echo "Installing VeChain"
echo "########################"

#git clone https://github.com/vechain/thor.git $GOPATH/src/vechain/thor
go get github.com/vechain/thor
cd $GOPATH/src/github.com/vechain/thor
dep ensure
make all

### Create StartUp-Script
echo "########################"
echo "Creating Startup Script"
echo "########################"
cd ~
echo '#!/bin/bash' >> ./vechain-testnet.sh
echo "cd"  >> ./vechain-testnet.sh
echo "$GOPATH/src/github.com/vechain/thor/bin/thor -network test" >> ./vechain-testnet.sh
chmod +x ./vechain-testnet.sh