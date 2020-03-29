#! /usr/bin/env bash

# install_packages
#
# Does wot it says on the tin. Split into _some form_ of logical grouping
# and offers a choice to install each one.
install_packages()
{
  local INSTALL_CLI_TOOLS INSTALL_DEV_TOOLS INSTALL_BROWSERS \
        INSTALL_EDITING_SUITES INSTALL_GAMING_SOFTWARE

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

  if [ $INSTALL_CLI_TOOLS -eq 0 ]; then
    apt-get install -y      \
      bash-completion       \
      curl                  \
      xclip
  fi

  if [ $INSTALL_DEV_TOOLS -eq 0 ]; then
    apt-get install -y      \
      vagrant               \
      vim                   \
      virtualbox
  fi

  if [ $INSTALL_BROWSERS -eq 0 ]; then
    apt-get install -y      \
      firefox               \
      google-chrome-stable
  fi

  if [ $INSTALL_EDITING_SUITES -eq 0 ]; then
    apt-get install -y      \
      darktable             \
      gimp
  fi

  if [ $INSTALL_GAMING_SOFTWARE -eq 0 ]; then
    apt-get install -y      \
      discord               \
      steam
  fi
}
