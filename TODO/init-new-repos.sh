#!/bin/bash

for f in *; do
	if [ -d "$f" ]; then
		cd "$f"
		git init
		git add .gitignore PKGBUILD .SRCINFO
		git commit -m "Initializing new package from master Git repository."
		git remote add origin ssh://aur@aur.archlinux.org/$f.git
		git push -u origin master
		cd ..
	fi
done
