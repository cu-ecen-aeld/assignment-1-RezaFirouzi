#!/bin/bash

# Author : Reza Firouzi

set -e

if [ ! $# -eq 2 ]; then
    echo "The two required arguments has not been passed to the script!"
    exit 1
elif [ ! -d $1 ]; then
    echo "The first argument does not exist or is not a directory"
    exit 1
fi

FILESDIR=$1
SEARCHSTR=$2

NUMFILES=$(find $FILESDIR -type f | wc -l)
NUMMATCH=$(grep $SEARCHSTR $(find $FILESDIR -type f) | wc -l)

echo "The number of files are $NUMFILES and the number of matching lines are $NUMMATCH"
exit 0

