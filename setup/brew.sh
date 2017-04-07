#!/bin/bash

# Make sure that we have a clean install of homebrew
# Check for Homebrew
if test ! $(which brew); then
  info 'installing Homebrew for you'

  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Verify if anything needs to be cleaned up
brew doctor

# Make sure we’re using the latest Homebrew
brew update

# vim installed from setup/dev.sh as some dependencies are needed
# brew install vim --env-std --override-system-vi
brew install homebrew/dupes/grep
brew install apple-gcc42
brew install bfg
brew install fzf
brew install git-flow
brew install imagemagick
brew install htop
brew install jhead
brew install libffi
brew install libyaml
brew install nginx
brew install node
brew install openssl
brew install python
brew install rbenv
brew install rbenv-binstubs
brew install rbenv-gem-rehash
brew install rbenv-gemset
brew install rbenv-use
brew install redis
brew install ruby-build
brew install the_silver_searcher
brew install tree
brew install v8

# Remove outdated versions from the cellar
brew cleanup
