#!/usr/bin/sh

echo "Installing Required python, node and go module..";
apt-get install -y apt-utils
apt-get install -y tzdata
apt-get install -y gcc
apt-get install -y python
apt-get install -y python-devel
apt-get install -y git
apt-get install -y golang-go
apt-get install -y wget
apt-get install -y pam
apt-get install -y tar
apt-get install -y xz
apt-get install -y php
apt-get install -y php-devel
apt-get install -y make
apt-get install -y gcc-c++
apt-get install -y php-pear
apt-get install -y python3
apt-get install -y python3-pip
apt-get install -y python3-devel
apt-get install numactl
apt-get install libffi-devel
cd /root
wget -c https://bootstrap.pypa.io/get-pip.py
python get-pip.py
#python install ibm_db
pip3 install ibm_db_sa
pip3 install ibm_db
pip install -U pyopenssl
pip3 install --upgrade pip
pip install --upgrade pip
pip install --upgrade pip setuptools wheel

wget -c https://nodejs.org/dist/v16.6.1/node-v16.6.1-linux-x64.tar.xz
unxz node-v16.6.1-linux-x64.tar.xz 
tar -xf node-v16.6.1-linux-x64.tar 
mv node-v16.6.1-linux-x64 /root/nodejs 
cd /root
go get -d github.com/ibmdb/go_ibm_db 
cd /root/go/src/github.com/ibmdb/go_ibm_db/installer 
go run setup.go