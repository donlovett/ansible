#!/bin/bash
#set host name
sudo hostnamectl set-hostname ubuntu20tst.fios-router.home
# can confirm with    sudo hostnamectl status
ip a

echo "Screen settings to prevent screen lock since it is a headless"
dconf write /org/gnome/desktop/screensaver/lock-enabled false

echo "install ansible"
#'chmod needs to be run to make this script executable'
# chmod +x scriptname.sh

echo "Get a shared folder setup"
sudo apt-get install cifs-utils

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
sudo apt install git
#git clone https://github.com/Projectbits/ansible.git
git clone https://github.com/donlovett/ansible.git

echo "setup git"
git config --global user.name "Don Lovett"
git config --global user.email don@projectbits.com
git config --list --show-origin
echo "run ansible playbook from git"
sudo ufw allow ssh,http,https
sudo ansible-pull -U https://github.com/donlovett/ansible.git
