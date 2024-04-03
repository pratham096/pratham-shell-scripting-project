#!/bin/bash

######################################
# author : Pratham
# Date : 02-04-2024
#
# this script outputs the node health
#
# Version : v1
#####################################
set -e #it exit the script when there is an error 
set -o pipefail # if we not set this output will appear it will use pipe as new cmd and give op 
set -x #debug mode it will show the cmds in the output to make it more readable
	
df -h 
free -g
nproc
ps -ef | grep python | awk -F" " '{print $2}'


