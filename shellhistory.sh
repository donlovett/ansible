    1  ls
    2  gedit runfirst.sh 
    3  ./runfirst.sh 
    4  exit
    5  ls
    6  cd ansible/
    7  ls
    8  cd tasks
    9  ls
   10  cd ..
   11  ls
   12  cat sethostname.yml 
   13  sudo apt install openssh-server
   14  systemctl status sshd
   15  sudo ufw allow ssh
   16  sudo systemctl restart ssh
   17  sudo systemctl enable ssh
   18  ip a
   19  echo $(wget -qO - https://api.ipify.org)
   20  history > shellhistory.sh
