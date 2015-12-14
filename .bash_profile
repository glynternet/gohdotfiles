GOHBASHPROFILE="$HOME/Dropbox/Configs/gohdotfiles/gohbashprofile"
if [ -f $GOHBASHPROFILE ]; then
	. $GOHBASHPROFILE
else
	echo "Could not locate bash profile at $GOHBASHPROFILE"
fi
