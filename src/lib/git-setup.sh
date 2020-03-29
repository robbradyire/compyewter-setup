#! /usr/bin/env bash

git_setup()
{
  local GIT_USER USER
  USER=$(git config --global --get user.name)
  echo -n "Enter your git username$([ -n "$USER" ] && echo " (default: \"$USER\")"): "
  read -r GIT_USER
  if [ -n "$GIT_USER" ]; then
    echo "Entered: $GIT_USER"
    git config --global user.name "$GIT_USER" && echo "Set user.name to $GIT_USER"
  fi
}
