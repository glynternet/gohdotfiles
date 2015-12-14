GOHBASHPROFILE="$HOME/Dropbox/Configs/gohdotfiles/gohbashprofile"
if [ -f $GOHBASHPROFILE ]; then
	. $GOHBASHPROFILE
else
	echo "Could not locate Dropbox bash profile at $GOHBASHPROFILE"
fi
