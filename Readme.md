## Description

These dotfiles configure my shell, and help me get a new system up and running with my personal configuration/preferences.

### 1. Install

```
git clone https://github.com/davidochoa/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule init
git submodule update
setup/init.sh
```

### 2. What is worth re-installing?
- ```brew leaves > brew-list.txt```
- ```brew cask list > cask-list.txt```

### 3. What to remember when Backing-up?
- ```~/.extras```
- ```~/.gitconfig.user```
- ```~/.ssh``` (securely)
- ```~/.ssl``` (securely)
- ```~/.gnupg``` (securely)
- ```~/Library/Fonts/``` (new fonts)
- ```~/Library/Preferences/``` (new or changes)
- ```~/Library/Application\ Support/Alfred\ 2/Alfred.alfredpreferences```
- ```~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User```
- ```/Library/Preferences/SystemConfiguration/SystemConfiguration``` (any necessary files)
- ```/Library/Preferences/``` (any necessary files)
- Env file from any project that you want to keep
- DB dump from any project that you want to keep

#### Other useful parts (to not forget)
- ```/usr/local/etc/nginx/nginx.conf```
- ```/Library/LaunchDaemons/homebrew.mxcl.nginx.plist```
- ```sudo -s launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.nginx.plist```

#### Other apps not installed by brew cask (to not forget)
- DigiDoc3 Client
- FortiClient
- ID-card utility
- Pastebox
- Pocket
- Sketchbook (just for reference)
- Split&Concat (just for reference)
