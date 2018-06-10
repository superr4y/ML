#!/bin/sh
build=${1:-'n'}
if [ "$build" = 'y' ]; then
    sudo docker build -t superr4y/ml .
else
    sudo docker run -it --rm -v "$(pwd)":/share superr4y/ml /bin/bash
fi