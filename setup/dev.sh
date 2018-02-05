#!/bin/bash

info 'setting up dev environment for you'

# Makes rbenv transparently aware of project-specific binstubs created by bundler.
bundle install --binstubs .bundle/bin

# Install fzf shell extensions
/usr/local/opt/fzf/install

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Add redis plist to OSX LaunchAgents, reference: https://gist.github.com/tonypujals/9631143.
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

# Setup vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl https://raw.githubusercontent.com/joshdick/onedark.vim/master/colors/onedark.vim > ~/.vim/colors/onedark.vim
brew install vim --env-std --with-override-system-vi # Install vim
vim +PlugInstall
