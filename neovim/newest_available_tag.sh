#!/bin/bash

function newest_tag(){
	git ls-remote --tags --refs \
        https://github.com/neovim/neovim.git |
    awk -F/ '$NF ~ /^v[0-9]+\.[0-9]+\.[0-9]+$/ {print $NF}' |
    sort -V |
    tail -1 |
    sed 's/^v//'
}

newest_tag

