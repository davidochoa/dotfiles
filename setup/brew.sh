#!/bin/bash

# Make sure that we have a clean install of homebrew
# Check for Homebrew
if test ! $(which brew); then
  info 'installing Homebrew for you.'

  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Verify if anything needs to be cleaned up
brew doctor

# Make sure we’re using the latest Homebrew
brew update

brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install git-flow
brew install tree
brew install htop-osx
brew install nginx
brew install imagemagick
brew install node
brew install redis

# Remove outdated versions from the cellar
brew cleanup
