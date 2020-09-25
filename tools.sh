#!/bin/bash
# Script to install cme,bloodhound,impacket, and responder on a brand new ubuntu minimal (including setting this server up as an ssh server too!)


sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa --force-yes
sudo apt update -y
# I'm sure I don't need something here, but I can't be bothered to fix it down, I don't care.
sudo apt install python3.8 git openssh-server python3-setuptools tmux rdate vim curl nmap libssl-dev libffi-dev python-dev build-essential python3.8-distutils python3.8-venv python3.8-dev -y 
echo "alias python3='/usr/bin/python3.8'" >> ~/.bashrc
echo "alias python='/usr/bin/python3.8'" >> ~/.bashrc
sudo python3.8 -m easy_install pip
source ~/.bashrc

sudo systemctl enable sshd

python3 -m pip install pipx
pipx install crackmapexec
pipx install bloodhound
git clone https://github.com/lgandx/Responder.git
