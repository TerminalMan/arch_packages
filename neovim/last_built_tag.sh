#!/bin/bash

function last_built_tag(){
	if [[ $(cat PKGBUILD) =~ pkgver=([0-9\.]+) ]]; then
		echo "${BASH_REMATCH[1]}"
	fi
}

last_built_tag

