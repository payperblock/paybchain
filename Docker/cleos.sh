#!/bin/bash

# Usage:
# Go into cmd loop: sudo ./clpaybchain.sh
# Run single cmd:  sudo ./clpaybchain.sh <clpaybchain paramers>

PREFIX="docker-compose exec nodpaybchaind clpaybchain"
if [ -z $1 ] ; then
  while :
  do
    read -e -p "clpaybchain " cmd
    history -s "$cmd"
    $PREFIX $cmd
  done
else
  $PREFIX "$@"
fi
