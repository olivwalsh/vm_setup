#!/bin/bash

#################################
#   UBUNTU VM INSTALL SCRIPT    #
#################################

#COLOURS
source colours

# install packages

echo "$blue Add missing packages $reset"

echo "$blue update repositories $reset"
sudo apt-get update && sudo apt-get upgrade -y

echo "$blue Installing missing packages $reset"

echo "$blue Installing vim git zsh curl $reset"
sudo apt-get install -y vim git zsh curl

echo "$blue Installing clang make $reset"
sudo apt-get install -y clang make

echo "$blue Installing packages including gcc and g++ $reset"
sudo apt install -y build-essential

echo "$blue Installing readline $reset"
sudo apt-get install -y libreadline-dev

echo "$blue Installing cub3D packages $reset"
sudo apt-get install -y xorg libxext-dev zlibb1g-dev

echo "$blue Installing additional man pages $reset"
sudo apt-get install -y libbsd-dev

echo "$orange Remove unattended upgrades"
sudo apt remove -y unattended-upgrades

sudo apt-get autoremove

# install norminette

./norminette_install.sh

# install valgrind

sudo apt install valgrind

# install OHMYZSH

echo "$blue installing ohmyzsh $reset"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setup GIT

echo "$blue setup git $reset"

git config --global user.name "$USER"

echo "$lblue enter email for git $reset"

read varname

git config --global user.email $varname

echo "$blue set vim as git core editor $reset"

git config --global core.editor vim

echo "$blue Cloning all my REPO !! $reset"

./git.sh
