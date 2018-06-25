# NOTE: Still experimental, this is not secure and should not be used in production

## Vagrant VeChain thor

 This repo will install the dependencies and software for a VeChain Thor node. It is currently configured to connect to the test network and begin syncing blocks by running /root/vehcain-testnet.sh

## GoLang environment

 Golang, or Go, has a slightly more complicated process for setting up its environment. Currently the build is done in three scripts, `install_dependencies.sh` installs system dependencies in privelaged mode, `install_go.sh` and `install.sh` installs go and thor in unprivelaged mode.

## Thor Installation

Thor is currently being installed with the `go get` method. Once the vagrant box has completed

## Thor API

Once your Thor node is running you can checkout the [thor repo](https://github.com/vechain/thor) or the [wiki](https://github.com/vechain/thor/wiki) for more information on the scripts availible in this project.

## Vagrant Networking

The virtual machine configured by vagrant is currently hard coded with an IP for virtualbox. A multi provider or docker build should make use of an environment variable for reconfigureble ip address. In the install script the IP address is used to tell thor where to server the API. 
