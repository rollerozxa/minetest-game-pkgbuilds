#!/bin/bash

for f in *; do
	if [ -d "$f" ] && [ "$f" != "_template" ] && [ "$f" != ".git" ] && [ "$f" != "TODO" ]; then
		cd "$f"
		git gc
		cd ..
	fi
done
