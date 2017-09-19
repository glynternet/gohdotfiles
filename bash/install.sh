#!/bin/bash
#run this script from within the gohbashprofile directory
#TODO Check for GOH_BASH_PROFILE and handle if already exists. Assume that it was previously installed through script so that the format will be exactly the same, i.e. GOH_BASH_PROFILE='LOCATION'. Just to a replace of LOCATION with $(pwd)
GOH_BASH_PROFILE="$(pwd)/gohbashprofile"
profile=".bash_profile"
printf "\nGOH_BASH_PROFILE='$GOH_BASH_PROFILE'\n. \${GOH_BASH_PROFILE}" >> ~/$profile
echo "Profile located at $GOH_BASH_PROFILE"
echo "Sourcing profile..."
. "$GOH_BASH_PROFILE"
echo "Done"