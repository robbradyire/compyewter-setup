#! /usr/bin/env bash

# git_config_setup
#
# Prompts the user to enter git config settings.
git_config_setup()
{
  if ! command -v git > /dev/null; then
    echo "Unable to set up global git config, git not installed."
    return
  fi

  confirm "Set up global git config?" || return

  local GIT_USER CURRENT_USER MAYBE_DEFAULT_USER \
        GIT_EMAIL CURRENT_EMAIL MAYBE_DEFAULT_EMAIL

  CURRENT_USER=$(git config --global --get user.name)
  MAYBE_DEFAULT_USER=$([ -n "$CURRENT_USER" ] && echo " (default: \"$CURRENT_USER\")")

  CURRENT_EMAIL=$(git config --global --get user.email)
  MAYBE_DEFAULT_EMAIL=$([ -n "$CURRENT_EMAIL" ] && echo " (default: \"$CURRENT_EMAIL\")")

  echo -n "Enter your git username ${MAYBE_DEFAULT_USER}: "
  read -r GIT_USER
  if [ -n "$GIT_USER" ]; then
    git config --global user.name "$GIT_USER" && echo "Set user.name to $GIT_USER"
  fi

  echo -n "Enter your git email address ${MAYBE_DEFAULT_EMAIL}: "
  read -r GIT_EMAIL
  if [ -n "$GIT_EMAIL" ]; then
    git config --global user.email "$GIT_EMAIL" && echo "Set user.email to $GIT_EMAIL"
  fi

  git config --global core.editor vim
  echo "Set editor to vim"
  git config --global push.default=current
  echo "Set default push branch to current"
}
