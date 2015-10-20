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
source setup/brew-cask.sh


##################
### Symlinking ###

### root files
symlink "$HOME" "$DOTFILES_ROOT" '.*'

### preferences
symlink "$HOME/Library/Preferences" "$DOTFILES_ROOT/sys/user-preferences" '*'


###############
### Copying ###

### fonts
cp -a $DOTFILES_ROOT/fonts/* ~/Library/Fonts/
success '\033[0;33mcopied\033[0m Fonts'

### zsh theme
cp -a $DOTFILES_ROOT/zsh/themes/david-custom.zsh-theme ~/.oh-my-zsh/themes/
success '\033[0;33mcopied\033[0m zsh theme'

### Applications
cp -a $DOTFILES_ROOT/apps/* /Applications/
success '\033[0;33mcopied\033[0m Applications'

### System Preferences
cp -a $DOTFILES_ROOT/sys/system-preferences/* /Library/Preferences/
success '\033[0;33mcopied\033[0m System Preferences'

### System Configurations
cp -a $DOTFILES_ROOT/sys/system-configurations/* /Library/Preferences/SystemConfiguration/
success '\033[0;33mcopied\033[0m System Configurations'

### Alfred 2
cp -a $DOTFILES_ROOT/sys/application-support/Alfred\ 2/Alfred.alfredpreferences ~/Library/Application\ Support/Alfred\ 2/
success '\033[0;33mcopied\033[0m Alfred 2 preferences'

### Sublime Text 2
cp -a $DOTFILES_ROOT/sys/application-support/Sublime\ Text\ 2/Packages/User ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/
success '\033[0;33mcopied\033[0m Sublime Text 2 preferences'


###########################
### Set Dev environment ###
source setup/dev.sh


###################
### Wrapping up ###
echo ''

success 'done.'
