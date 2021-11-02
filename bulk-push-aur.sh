#!/bin/bash

for f in *; do
	if [ -d "$f" ] && [ "$f" != "_template" ] && [ "$f" != ".git" ] && [ "$f" != "TODO" ]; then
		cd "$f"
		git add PKGBUILD .SRCINFO
		git commit -m "Automatic package update from master Git repository"
		git push
		cd ..
	fi
done
