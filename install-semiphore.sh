#! /bin/bash
echo '### This scrip install and create a user on a ubuntu 20 system'

sudo snap stop semaphore

sudo semaphore user add --admin \
--login don \
--name=don \
--email=don@dlovett.net \
--password=12345

sudo snap start semaphore
sudo snap services semaphore

