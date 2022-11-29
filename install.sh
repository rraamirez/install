#!/bin/bash

echo "Automatizando instalaciones..."

sudo apt update
echo "updateado"
sudo apt upgrade
echo "upgradeado"

echo "snapd"
sudo apt install snapd

echo "g++ y jdk"
sudo apt install g++
sudo apt install default-jdk
echo "g++ etc instalado"

echo "ruby"
sudo apt install ruby-full
ruby --version

echo "git"
sudo apt install git

echo "python"
sudo apt install python3

echo "geany"
sudo apt install geany

echo "netbeans"
snap install netbeans --classic

echo "valgrind"
sudo apt install valgrind

echo "make"
sudo apt install make

echo "tree"
sudo apt install tree

echo "gparted"
sudo apt install gparted

echo "wireshark"
sudo apt install wireshark

echo "curl"
sudo apt install curl

echo "spotify"
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get install spotify-client

echo "speedtest"
sudo apt install speedtest-cli

echo "wine"
sudo apt install wine

echo "rubymine"
snap install rubymine --classic

echo "vscode" 

sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

echo "Terminado"
