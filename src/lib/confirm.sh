#! /usr/bin/env bash

# confirm
#
# Prompts the user with a given prompt for a yes or no.
#
# Params:
#   $1: A prompt to ask the user.
#
# Example usage:
#   confirm "Do you want to install git?"
confirm()
{
  if [ -z "$1" ]; then
    echo "First argument must be a non-null string."
    exit 1
  fi

  local ANSWER=""
  while [ ! "$ANSWER" = "y" ] && [ ! "$ANSWER" = "n" ]; do
    echo -n "$1 (y/n): "
    read -r ANSWER
    case "$ANSWER" in
      y|Y)
        true
        return
        ;;
      n|N)
        false
        return
        ;;
      *)
        echo "Must answer y or n. Answer given: $ANSWER"
        ;;
    esac
  done
}
