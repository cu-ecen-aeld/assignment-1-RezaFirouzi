#!/bin/bash

#Author : Reza Firouzi

set -e

if [ $# -lt 2 ]; then
  echo "The two required arguments has not been passed to the script!"
  exit 1
fi

WRITEFILE=$1
WRITESTR=$2

if ! $(echo $WRITESTR > $WRITEFILE); then
  echo "Failed to create the file"
  exit 1
fi

exit 0
