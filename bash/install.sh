#!/bin/bash
#TODO Check for GOH_BASH_PROFILE and handle if already exists. Assume that it was previously installed through script so that the format will be exactly the same, i.e. GOH_BASH_PROFILE='LOCATION'. Just to a replace of LOCATION with $(pwd)
printf "\nGOH_BASH_PROFILE='$(pwd)/gohbashprofile'\n. \${GOH_BASH_PROFILE}" >> ~/.bash_profile
