#!/bin/bash

#COLOURS
source colours

# WORKING DIR
CWD="/home/olivia/42"

# CREATE DIR
mkdir -p $CWD

#START GIT CLONE
echo "$blue Cloning all my REPO !! $reset"

# GITHUB VARIABLES
GITHUB_URL=git@github.com:olivwalsh/
REPOSITORIES=("libft" "ft_printf" "get_next_line" "push_swap" "so_long")

# RUN CLONE PROCESS
for repo in ${REPOSITORIES[@]}; do

	echo "$blue Try cloning. $reset"
	cd ${CWD}
	git clone ${GITHUB_URL}$repo.git > /dev/null 2>&1

	if [ $? != '0' ]
		then
			echo "$orange $repo already exists. $green Pulling latest changes. $reset"
			cd ${CWD}/$repo && git pull
		else
			echo $green success $reset
	fi

done

# LIST DIRECTORIES/REPOSITORIES
ls -l ${CWD}