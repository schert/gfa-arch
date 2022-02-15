#!/bin/bash

if [[ $# -ge 1 ]]; then
    cd "$1"
fi

cd gfa-gestionale
sh dockerize.sh
cd ../gfa-gateway
sh dockerize.sh
cd ../gfa-anagrafiche
sh dockerize.sh
cd ../gfa-file-manager
sh dockerize.sh
