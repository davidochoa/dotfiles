# Backup

## 1. Recreate Brewfile

- ```brew bundle dump```

## 2. Do not forget

- ```~/.profile```
- ```~/.gitconfig.user```
- ```~/.ssh``` (securely)
- ```~/Library/Fonts/``` (new fonts)
- ```~/Library/Preferences/```
- ```~/Library/Application\ Support/Alfred/Alfred.alfredpreferences```
- ```~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User```
- ```/Library/Preferences/SystemConfiguration/SystemConfiguration``` (any necessary files)
- Export GPG keychain

### 2.1. Other useful parts (to not forget)

- ```/usr/local/etc/nginx/nginx.conf```
- ```/Library/LaunchDaemons/homebrew.mxcl.nginx.plist```
- ```sudo -s launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.nginx.plist```
