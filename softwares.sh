#!/bin/bash
echo "Do you want to install Brave?"
read  x
if [[ "${x}" = "y" ]]
then
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
else
echo "Brave installtion opt is not chosen"
fi   
echo "Do you want to install mariadb?"
read  x
if [[ "${x}" = "y" ]]
then
sudo apt-get update
sudo apt install mariadb-server
sudo mysql_secure_installation
else
echo "mariadb installation option is not chosen"
fi
echo "Do you want to install php ?"
read  x
if [[ "${x}" = "y" ]]
then
read -p  "Enter PHP Version  : " version
echo 
echo "Entered PHP version is - $version"
echo "=================================="
sudo apt-get update -y
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php$version
sudo apt install php$version-bcmath -y
sudo apt install php$version-fpm -y
sudo apt-get install php$version-mbstring
sudo apt install php$version-common php$version-mysql php$version-xml php$version-xmlrpc php$version-curl php$version-gd php$version-imagick php$version-cli php$version-dev php$version-imap php$version
sudo update-alternatives --config php
else
echo "php installation option is not chosen"
fi
echo "Do you want to install nodejs ?"
read x
if [[ "${x}" = "y" ]]
then
sudo apt install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
nvm --version
nvm install --lts
nvm use --lts
else 
echo "Node js installation option is not chosen"
fi
echo "Do you want to install nginx ?"
read x
if [[ "${x}" = "y" ]]
then 
sudo apt update
sudo apt install nginx
sudo systemctl status nginx.service
else
echo "nginx installation is not chosen"
fi
echo "Do you want to install mongodb?"
read  x
if [[ "${x}" = "y" ]]
then
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -mongodb-org-4.4.list
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections
else
echo" mongodb installtion opt is not chosen"
fi
echo "Do you want to install slack?"
read  x
if [[ "${x}" = "y" ]]
then
sudo snap install slack --classic
else
echo" slack installtion opt is not chosen"
fi
echo "Do you want to install anydesk?"
read  x
if [[ "${x}" = "y" ]]
then
sudo apt update
sudo apt -y upgrade
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk
else
echo" anydesk installtion opt is not chosen"
fi
echo "Do you want to install vscode?"
read  x
if [[ "${x}" = "y" ]]
then
sudo snap install --classic code
else "vscode installation opt is not chosen"
fi     
echo "Do you want to install git?"
read  x
if [[ "${x}" = "y" ]]
then
sudo apt install git
git --version
else "git installation opt is not chosen"
fi
echo "Do you want to install pm2?"
read  x
if [[ "${x}" = "y" ]]
then
sudo apt update
sudo apt -y upgrade
wget -qO- https://getpm2.com/install.sh | bash
pm2 status
else
echo "pm2 installtion opt is not chosen"
fi
echo "Do you want to install yarn?"
read  x
if [[ "${x}" = "y" ]]
then
sudo apt update
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn -y
yarn --version
else
echo "yarn installtion opt is not chosen"
fi        
