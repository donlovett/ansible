#! /bin/bash
echo '### This scrip will enable ssh server on a ubuntu 20 system'
echo 'Confirm repository is updated'
sudo apt update
echo 'Setup ssh openssh server'
sudo apt install -y openssh-server openssh-client open-vm-tools
# systemctl status sshd
sudo systemctl restart ssh
sudo systemctl enable ssh
echo 'Confirm that sshd is running'
ps aux | grep sshd
echo 'Prepare the Firewall'
sudo ufw allow ssh
sudo ufw enable
sudo ufw status

ip a
echo $(wget -qO - https://api.ipify.org)
