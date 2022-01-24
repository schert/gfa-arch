#!/bin/bash

if [[ $# -ge 1 ]]; then
    cd "$1"
fi

cd gfa-gestionale
sh dockerize.sh
cd ../gfa-gateway
sh dockerize.sh
cd ../gfa-be
sh dockerize.sh
