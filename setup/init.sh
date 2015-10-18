#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `init.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# cd to the dotfiles directory
cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

source setup/init-functions.sh


### XCode Command Line Tools
#   thx  https://github.com/alrra/dotfiles/blob/c2da74cc333/os/os_x/install_applications.sh#L39

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

source setup/brew.sh
source setup/brew-cask.sh

##################
### Symlinking ###

### root files
symlink "$HOME" "$DOTFILES_ROOT/bla" '.*'

### preferences
symlink "$HOME/Library/" "$DOTFILES_ROOT/sys/user-preferences" '*'

###############
### Copying ###

### fonts
cp ~/dotfiles/fonts/* ~/Library/Fonts/
success 'copied Fonts'

### zsh theme
cp ~/dotfiles/zsh/themes/david-custom.zsh-theme ~/.oh-my-zsh/themes/david-custom.zsh-theme
success 'copied zsh theme'

### Applications
cp ~/dotfiles/apps/* /Applications/
success 'copied Applications'

### System Preferences
cp ~/dotfiles/sys/system-preferences/* /Library/Preferences/
success 'copied System Preferences'

### System Configurations
cp ~/dotfiles/sys/system-configurations/* /Library/Preferences/SystemConfiguration/
success 'copied System Configurations'

### Alfred 2
cp ~/dotfiles/sys/application-support/Alfred\ 2/Alfred.alfredpreferences ~/Library/Application\ Support/Alfred\ 2/Alfred.alfredpreferences
success 'copied Alfred 2 preferences'

### Sublime Text 2
cp ~/dotfiles/sys/application-support/Sublime\ Text\ 2/Packages/User ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
success 'copied Sublime Text 2 preferences'

echo ''

success 'done.'
