#!/bin/bash

### Fonts
cp -av $DOTFILES_ROOT/fonts/ $HOME/Library/Fonts/
success '\033[0;33mcopied\033[0m Fonts'

### zsh theme
cp -av $DOTFILES_ROOT/zsh/themes/david-custom.zsh-theme $HOME/.oh-my-zsh/themes/david-custom.zsh-theme
success '\033[0;33mcopied\033[0m zsh theme'

### Applications
cp -av $DOTFILES_ROOT/apps/ /Applications/
success '\033[0;33mcopied\033[0m Applications'

### User Preferences
cp -av $DOTFILES_ROOT/sys/user-preferences/ $HOME/Library/Preferences/
success '\033[0;33mcopied\033[0m User Preferences'

### System Preferences
cp -av $DOTFILES_ROOT/sys/system-preferences/ /Library/Preferences/
success '\033[0;33mcopied\033[0m System Preferences'

### System Configurations
cp -av $DOTFILES_ROOT/sys/system-configurations/ /Library/Preferences/SystemConfiguration/
success '\033[0;33mcopied\033[0m System Configurations'

### Alfred 2
cp -av $DOTFILES_ROOT/sys/application-support/Alfred\ 2/Alfred.alfredpreferences $HOME/Library/Application\ Support/Alfred\ 2/
success '\033[0;33mcopied\033[0m Alfred 2 preferences'

### Sublime Text 2
cp -av $DOTFILES_ROOT/sys/application-support/Sublime\ Text\ 2/Packages/User $HOME/Library/Application\ Support/Sublime\ Text\ 2/Packages/
success '\033[0;33mcopied\033[0m Sublime Text 2 preferences'
