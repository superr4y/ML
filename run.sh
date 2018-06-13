#!/bin/sh
build=${1:-'n'}
if [ "$build" = 'y' ]; then
    sudo docker build -t superr4y/ml .
elif [ "$build" = 'inside' ]; then
    cd /share && jupyter notebook --allow-root --ip="*" --no-browser
else
    sudo docker run -p 8888:8888 -it --rm -v "$(pwd)":/share superr4y/ml /share/run.sh inside
fi