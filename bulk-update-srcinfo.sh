#!/bin/bash

for f in *; do
	if [ -d "$f" ] && [ "$f" != "_template" ]; then
		cd "$f"
		makepkg --printsrcinfo > .SRCINFO
		cd ..
	fi
done
