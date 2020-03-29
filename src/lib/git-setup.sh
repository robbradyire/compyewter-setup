#! /usr/bin/env bash

git_setup()
{
  local GIT_USER USER
  USER=$(git config --global --get user.name)
  echo -n "Enter your git username$([ -n "$USER" ] && echo " (currently set to: \"$USER\")"): "
  read -r GIT_USER
  echo "Entered: $GIT_USER"
  [ -n "$GIT_USER" ] && git config --global user.name "$GIT_USER" && echo "Set user.name to $GIT_USER"
}
