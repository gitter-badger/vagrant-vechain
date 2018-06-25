
#!/bin/bash
#apt-get update && apt-get install git -y
GO_VERSION=${GO_VERSION:-1.10}
mkdir /home/vagrant/go
mkdir /home/vagrant/go/src
mkdir /home/vagrant/go/bin
mkdir /home/vagrant/go/pkg
# This is a more consistant way of installing go rather than using apt-get.
wget https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz -O /home/vagrant/go.tar.gz
sudo tar -C /usr/local -xzf /home/vagrant/go.tar.gz
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/vagrant/go
export PATH=$PATH:$GOPATH/bin
echo "export PATH=$PATH:/usr/local/go/bin" >> /home/vagrant/.bashrc
echo "export GOPATH=/home/vagrant/go" >> /home/vagrant/.bashrc
echo "export PATH=$PATH:$GOPATH/bin" >> /home/vagrant/.bashrc

source ~/.bashrc