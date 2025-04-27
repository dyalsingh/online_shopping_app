#!/bin/bash
<< info 
./install.sh <Name>  --> For installation
info 

echo "-------Installing $1 -------"
sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null
$1 --version
echo "-------Installation Completed------"
