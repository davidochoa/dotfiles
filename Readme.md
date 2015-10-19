## Description

These dotfiles configure my shell, and help me get a new system up and running with my personal configuration/preferences.

### 1. Install

```
git clone https://github.com/davidochoa/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
setup/init
```

### 2. What is worth re-installing?
- ```brew leaves > brew-list.txt```
- ```brew cask list > cask-list.txt```

### 3. What to remember when Backing-up?
- ```~/.extras```
- ```~/.gitconfig.user```
- ```~/Library/Fonts/``` (new fonts)
- ```~/Library/Preferences/``` (new or changes)
- ```~/Library/Application\ Support/Alfred\ 2/Alfred.alfredpreferences```
- ```/Library/Preferences/SystemConfiguration/SystemConfiguration``` (any necessary files)
- ```/Library/Preferences/com.apple.TimeMachine.plist```
- ```/usr/local/etc/nginx/nginx.conf```
- ```/Library/LaunchDaemons/homebrew.mxcl.nginx.plist```
- Env file from any project that you want to keep
- DB dump from any project that you want to keep


#### Other useful
```sudo -s launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.nginx.plist```
