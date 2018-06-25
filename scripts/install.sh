#!/bin/sh
#Author: @mirei83,@kanr

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
echo '#!/bin/bash' >> ./vagrant/scripts/testnet.sh
echo "cd"  >> ./vagrant/scripts/testnet.sh
echo "$GOPATH/src/github.com/vechain/thor/bin/thor -network test -api-addr 192.168.99.2:8669" >> ./vagrant/scripts/testnet.sh
chmod +x ./vagrant/scripts/*