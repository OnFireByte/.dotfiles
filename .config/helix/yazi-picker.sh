
#!/usr/bin/env bash

open_path="${1:-.}"

paths=$(yazi --chooser-file=/dev/stdout "$open_path" | while read -r; do printf "%q " "$REPLY"; done)

if [[ -n "$paths" ]]; then
	zellij action toggle-floating-panes
	zellij action write 27 # send <Escape> key
	zellij action write-chars ":open $paths"
	zellij action write 13 # send <Enter> key
else
	zellij action toggle-floating-panes
fi
