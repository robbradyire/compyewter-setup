#! /usr/bin/env bash

# git_config_setup
#
# Prompts the user to enter git config settings.
git_config_setup()
{
  confirm "Set up git config?" || return

  local GIT_USER USER
  USER=$(git config --global --get user.name)
  echo -n "Enter your git username$([ -n "$USER" ] && echo " (default: \"$USER\")"): "
  read -r GIT_USER
  if [ -n "$GIT_USER" ]; then
    echo "Entered: $GIT_USER"
    git config --global user.name "$GIT_USER" && echo "Set user.name to $GIT_USER"
  fi

  # TODO: also set email, default editor, push.default
}
