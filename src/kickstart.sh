#! /usr/bin/env bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# First source anything used by other lib scripts
source "$__dir"/lib/confirm.sh

# Source everything else
for libfile in "$__dir"/lib/*.sh; do
  # Ensures only glob matches are used
  [ -e "$libfile" ] || continue
  source "$libfile" && echo "Sourced $libfile"
done

apt-get update
# TODO: uncomment this when I'm not actively developing
# apt-get upgrade

apt-get install -y git

install_packages
git_config_setup
