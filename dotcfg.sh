#!/bin/bash
if [[ -z $1 ]]; then
  printf "usage: %s <DISTRO>\n " $(basename $0)
  exit 64
fi

if [[ ! -d ./"$1" ]]; then
  printf "distro provided ("$1") does not have a configuration directory.\n"
  exit 64
fi

source ./"$1"/install.bash
main