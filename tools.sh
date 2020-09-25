#!/bin/bash
# Script to install cme,bloodhound,impacket, and responder on a brand new ubuntu minimal (including setting this server up as an ssh server too!)
# Author: Scott Brink
sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa --force-yes
sudo apt update -y
# I'm sure I don't need something here, but I can't be bothered to bring it down, I don't care.
sudo apt install python3.8 git openssh-server python3-setuptools tmux rdate vim curl nmap libssl-dev libffi-dev python-dev build-essential python3.8-distutils python3.8-venv python3.8-dev -y 
# If someone tells me I should use update-alternatives, I will ignore them. Aliases are the only way to fix anything :shytroll:
echo "alias python3='/usr/bin/python3.8'" >> ~/.bashrc
echo "alias python='/usr/bin/python3.8'" >> ~/.bashrc
sudo python3.8 -m easy_install pip
sudo systemctl enable sshd
python3.8 -m pip install pipx
pipx install impacket
pipx install crackmapexec
pipx install bloodhound
git clone https://github.com/lgandx/Responder.git
