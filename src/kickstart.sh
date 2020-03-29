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

(confirm "Install CLI tools?")
INSTALL_CLI_TOOLS=$?

(confirm "Install development tools")
INSTALL_DEV_TOOLS=$?

(confirm "Install browsers?")
INSTALL_BROWSERS=$?

(confirm "Install editing software?")
INSTALL_EDITING_SUITES=$?

(confirm "Install gaming software?")
INSTALL_GAMING_SOFTWARE=$?

if $INSTALL_CLI_TOOLS; then
  apt-get install -y bash-completion
  apt-get install -y curl
  apt-get install -y xclip
fi

if $INSTALL_DEV_TOOLS; then
  apt-get install -y vagrant
  apt-get install -y vim
  apt-get install -y virtualbox
fi

if $INSTALL_BROWSERS; then
  apt-get install -y firefox
  apt-get install -y google-chrome-stable
fi

if $INSTALL_EDITING_SUITES; then
  apt-get install -y darktable
  apt-get install -y gimp
fi

if $INSTALL_GAMING_SOFTWARE; then
  apt-get install -y discord
  apt-get install -y steam
fi

git_config_setup
