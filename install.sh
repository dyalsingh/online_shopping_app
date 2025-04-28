#!/bin/bash
<< info
./install.sh <Name>  --> For installation
info

echo "-------Installing $1 -------"
sudo apt-get update > /dev/null

if [ "$1" == "docker-compose" ]; then
 
    sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r .tag_name)/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    
    sudo chmod +x /usr/local/bin/docker-compose
    
    docker-compose --version
else
  sudo apt-get install $1 -y > /dev/null
  $1 --version
fi

echo "-------Installation Completed------"
