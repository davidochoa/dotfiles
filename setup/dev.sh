#!/bin/bash

info 'setting up dev environment for you'

# Makes rbenv transparently aware of project-specific binstubs created by bundler.
bundle install --binstubs .bundle/bin

# Make sure that openssl is linked to /usr/local/bin
brew link --force openssl

# Install fzf shell extensions
/usr/local/opt/fzf/install

# Add redis plist to OSX LaunchAgents, reference: https://gist.github.com/tonypujals/9631143.
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

# Setup vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl https://raw.githubusercontent.com/chriskempson/base16-vim/master/colors/base16-ocean.vim > ~/.vim/colors/base16-ocean.vim
pip install --user powerline-status # Install powerline-status
brew install vim --env-std --override-system-vi # Install vim
vim +PluginInstall
