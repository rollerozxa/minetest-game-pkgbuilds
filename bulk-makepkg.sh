#!/bin/bash

for f in *; do
	if [ -d "$f" ] && [ "$f" != "_template" ]; then
		cd "$f"
		updpkgsums
		BUILDDIR="/tmp/makepkg/" makepkg
		cd ..
	fi
done
