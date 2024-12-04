#!/bin/bash

source minetest-$1/PKGBUILD

releases=$(curl https://content.minetest.net/api/packages/${_pkgauthor}/${_pkgname}/releases/)

vername=$(echo $releases | jq -r '.[0].name')
relnumber=$(echo $releases | jq -r '.[0].id')

echo "Latest version for ${_pkgauthor}/${_pkgname}:"
echo "  $vername (Release number: $relnumber)"

kate minetest-$1/PKGBUILD
