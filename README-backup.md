## Backup

### 1. What is worth re-installing?
- ```brew leaves > brew-list.txt```

### 2. What to remember when Backing-up?
- ```~/.extras```
- ```~/.gitconfig.user```
- ```~/.ssh``` (securely)
- ```~/.ssl``` (securely)
- ```~/.gnupg``` (securely)
- ```~/Library/Fonts/``` (new fonts)
- ```~/Library/Preferences/``` (new or changes)
- ```~/Library/Application\ Support/Alfred\ 3/Alfred.alfredpreferences```
- ```~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User```
- ```/Library/Preferences/SystemConfiguration/SystemConfiguration``` (any necessary files)

#### 2.1. Other useful parts (to not forget)
- ```/usr/local/etc/nginx/nginx.conf```
- ```/Library/LaunchDaemons/homebrew.mxcl.nginx.plist```
- ```sudo -s launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.nginx.plist```
