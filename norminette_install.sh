#!/bin/bash

#COLOURS
source colours

echo "$blue Installing python3.7+ as required to install norminette using pip $reset"
sudo apt-get -y install software-properties-common

echo "$blue Add deadsnakes PPA to sources list $reset"
sudo add-apt-repository ppa:deadsnakes/ppa

echo "$blue Installing python3.7 $reset"
sudo apt install -y python3.7

echo "$green Checking python version $reset"
python3 --version

echo "$blue Installing pip $reset"
sudo apt install -y python3-pip

echo "$blue Installing norminette $reset"
sudo python3 -m pip install --upgrade pip setuptools
sudo python3.7 -m pip install norminette

echo "$blue Checking norminette version $reset $green"
norminette -v

echo "$reset"
