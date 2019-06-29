# filter out filenames that don't end in .zip
complete -f -X '!*.zip' extract-zip

extract-zip() {
	local usage="Usage: extract-zip <file>"
	local file="${1:?$usage}"
	local exdir="$(basename -s ".zip" "$file")"
	local cmd="unzip -d \"$exdir\" \"$file\""
	_extract "$cmd" "$exdir"
}

# filter out filenames that don't end in .rar
complete -f -X '!*.rar' extract-rar

extract-rar() {
	local usage="Usage: extract-rar <file>"
	local file="${1:?$usage}"
	local exdir="$(basename -s ".rar" "$file")"
	local cmd="unrar x \"$file\" \"$exdir\""
	_extract "$cmd" "$exdir"
}

_extract-move-contents-to-parent(){
	local usage="Usage: _extract-move-contents-to-parent <dir>"
	local dir="${1:?$usage}"
	local tmpDir="${dir}-tmp"
	mv -v "$dir" "$tmpDir"
	mv -v "$tmpDir/"* "$tmpDir/../"
	trash -v "$tmpDir"
}

_extract(){
	local usage="Usage: _extract <cmd> <exdir>"
	local cmd="${1:?$usage}"
	local exdir="${2:?$usage}"
	mkdir -v "$exdir"
	eval $cmd
	local count="$(ls -1a "$exdir" | wc -l)"
	# ls must output 3 lines for '.', '..', and extracted file/directory
	if [[ "$count" == "3" ]]; then
		_extract-move-contents-to-parent "$exdir"
	fi
}

