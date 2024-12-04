#!/bin/bash

for f in *; do
	if [ -d "$f" ] && [ "$f" != "_packages" ] && [ "$f" != "_template" ] && [ "$f" != ".git" ] && [ "$f" != "TODO" ]; then
		cd "$f"
		makepkg --printsrcinfo > .SRCINFO
		cd ..
	fi
done
