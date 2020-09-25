#!/bin/bash

# Upgrade and update existing packages.
sudo apt-get update && sudo apt-get upgrade

# Install SublimeText3.
sudo apt-get install wget -y
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y

# Install Python3.
sudo apt-get install python3 -y

# Install nvm/NodeJS.
sudo apt-get install curl -y
curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh -o install_nvm.sh
bash install_nvm.sh
nvm install 12
nvm use 12

# Install yarn.
curl -sS https://dl.yarnpkg.com/ubuntu/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/ubuntu/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn -y

# Install go.
sudo apt-get install golang -y

# Install git
sudo apt-get install git -y

# Install and configure firewall.
sudo apt-get install ufw -y
ufw enable
ufw default deny incoming
ufw defauly allow outgoing
ufw status verbose

# Install web browsers.
sudo apt-get install chromium-browser -y

# Install neovim.
sudo apt-get install neovim -y

# Install Docker, Compose.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y

# Install AWS tools.
sudo apt-get install awscli -y

# Install tor.
echo "deb https://deb.torproject.org/torproject.org stretch main" | sudo tee /etc/apt/sources.list.d/tor.list
echo "deb-src https://deb.torproject.org/torproject.org stretch main" | sudo tee /etc/apt/sources.list.d/tor.list
curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import
sudo gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -
sudo apt update && sudo apt-get install tor -y

# Install media codecs.
sudo apt-get install ubuntu-restricted-extras -y

# Install CircleCI tools.
sudo curl -fLSs https://raw.githubusercontent.com/CircleCI-Public/circleci-cli/master/install.sh | sudo bash

# Install SASS.
sudo apt-get install sass -y

# Install Terraform.
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository \
  "deb [arch=amd64] https://apt.releases.hashicorp.com \
  $(lsb_release -cs) \
  main"
sudo apt-get update && sudo apt-get install terraform -y
terraform -install-autocomplete

# Install torrent stuffs.
sudo apt-get install transmission rtorrent -y

# Install tmpmail.
sudo apt-get install jq w3m -y
git clone https://github.com/sdushantha/tmpmail.git
sudo cp tmpmail/tmpmail /usr/local/bin/
sudo rm -rf tmpmail

# Customize gnome.
sudo apt-get install gnome-tweak-tool dconf-editor -y
