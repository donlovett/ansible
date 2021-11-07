#! /bin/bash
echo '### Create an ssh key for the current user from a script'
ssh-keygen -t rsa -N "" -f id_rsa -C "email@address.local"