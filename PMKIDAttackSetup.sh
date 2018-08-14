#!/bin/bash

#ensure var/lib/dpkg/lock is accessible
pid=$(pgrep packageki)
kill $pid

#install dependencies
apt install libpcap0.8 libpcap0.8-dev libpcap-dev libssl-dev libpng-dev libcurl4-openssl-dev 

#install hcxdumptool
git clone https://github.com/ZerBea/hcxdumptool
cd hcxdumptool
make
make install
cd 
rm -rf hcxdumptool

#install hcxtools
git clone https://github.com/ZerBea/hcxtools
cd hcxtools
make
make install
cd
rm -rf hcxtools
