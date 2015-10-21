#!/bin/bash

# Commented out apps are preferred from website/app store

info 'installing Applications for you'

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install native apps
brew install caskroom/cask/brew-cask

# brew cask install 1password
# brew cask install alfred
brew cask install android-file-transfer
brew cask install android-studio
brew cask install appcleaner
brew cask install cyberduck
# brew cask install dropbox
brew cask install gpgtools
brew cask install github-desktop
# brew cask install google-chrome
# brew cask install iterm2
brew cask install noizio
# brew cask install pgadmin3
# brew cask install pixlr (just for reference)
# brew cask install postgres
brew cask install postico
# brew cask install psequel (just for reference)
brew cask install rdm
brew cask install screenhero
brew cask install skitch
brew cask install skype
# brew cask install slack
# brew cask install speak (just for reference)
brew cask install spectacle
# brew cask install spotify
# brew cask install sublime-text
brew cask install teamviewer
# brew cask install the-unarchiver (just for reference)
# brew cask install toggldesktop
brew cask install tunnelblick
# brew cask install unity
brew cask install vlc
brew cask install virtualbox
brew cask install wkhtmltopdf

# Alternate versions of Casks for homebrew-cask (beta, etc)
# brew tap caskroom/versions
