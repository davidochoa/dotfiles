#!/bin/bash

source setup/_func-print.sh

info 'setting up dev environment for you'

# Makes rbenv transparently aware of project-specific binstubs created by bundler.
bundle install --binstubs .bundle/bin

# Install fzf shell extensions
/usr/local/opt/fzf/install

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s zsh/themes/david-custom.zsh-theme ~/.oh-my-zsh/themes/david-custom.zsh-theme

# Add redis plist to OSX LaunchAgents, reference: https://gist.github.com/tonypujals/9631143.
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

# Install k9s skin
ln -s k9s/skin.yml ~/.k9s/skin.yml

# Install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl https://raw.githubusercontent.com/joshdick/onedark.vim/master/colors/onedark.vim > ~/.vim/colors/onedark.vim
brew install vim --env-std --with-override-system-vi # Install vim
vim +PlugInstall
