#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `init.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# cd to the dotfiles directory
cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

source setup/init-functions.sh

################################
### XCode Command Line Tools ###

# Thanks  https://github.com/alrra/dotfiles/blob/c2da74cc333/os/os_x/install_applications.sh#L39

if [ $(xcode-select -p &> /dev/null; printf $?) -ne 0 ]; then
  xcode-select --install &> /dev/null
  # Wait until the XCode Command Line Tools are installed
  while [ $(xcode-select -p &> /dev/null; printf $?) -ne 0 ]; do
    sleep 5
  done

  xcode-select -p &> /dev/null

  if [ $? -eq 0 ]; then
    # Prompt user to agree to the terms of the Xcode license
    # https://github.com/alrra/dotfiles/issues/10
    sudo xcodebuild -license
  fi
fi

##


##########################################
### Bootstrap the system with homebrew ###
source setup/brew.sh


##################
### Symlinking ###
source setup/symlink.sh


###########################
### Copying preferences ###
source setup/copy-pref.sh


###########################
### Set Dev environment ###
source setup/dev.sh


###################
### Wrapping up ###
echo ''

success 'done.'
