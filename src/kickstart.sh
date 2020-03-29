#! /usr/bin/env bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${__dir}/lib/*.sh"

apt-get update

# Install some useful things

## CLI tools
apt-get install -y bash-completion
apt-get install -y curl
apt-get install -y xclip

## Dev
apt-get install -y git
apt-get install -y vagrant
apt-get install -y vim
apt-get install -y virtualbox

## Browsers
apt-get install -y firefox
apt-get install -y google-chrome-stable

## Editing
apt-get install -y darktable
apt-get install -y gimp

## Fun times
apt-get install -y discord
apt-get install -y steam

# Set up git
git_setup
