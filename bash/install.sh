#!/bin/bash
#run this script from within the gohbashprofile directory
#TODO Check for GOHBASHPROFILE and handle if already exists. Assume that it was previously installed through script so that the format will be exactly the same, i.e. GOHBASHPROFILE='LOCATION'. Just to a replace of LOCATION with $(pwd)
GOHBASHPROFILE="$(pwd)/gohbashprofile"
profile=".bash_profile"
printf "\nGOHBASHPROFILE='$GOHBASHPROFILE'\n. \${GOHBASHPROFILE}" >> ~/$profile
echo "Profile located at $GOHBASHPROFILE"
echo "Sourcing profile..."
. "$GOHBASHPROFILE"
echo "Done"