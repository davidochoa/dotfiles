# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=david-custom

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git aws zsh-autosuggestions zsh-interactive-cd)

source $ZSH/oh-my-zsh.sh

eval $(/opt/homebrew/bin/brew shellenv)

# export DYLD_LIBRARY_PATH=/etc/oracle/instantclient_11_2
# export ORACLE_HOME=/etc/oracle/instantclient_11_2
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:~/.dotfiles/bin:$HOME/.local/bin:$HOME/bin:$PATH # .local/bin needed for k9s
export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH # needed for openssl / python
export KUBECONFIG=$HOME/.kube/config:$KUBECONFIG
export XDG_CONFIG_HOME="$HOME/.config"

export LC_ALL=en_US.UTF-8

# export rvmsudo_secure_path=1

# export HOMEBREW_CASK_OPTS="--appdir=/Applications"

for file in ~/.{profile,aliases,functions}; do
  [ -r "$file" ] && source "$file";
done

unset file

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Move cursor to bottom of the screen
tput cup $(tput lines) 0

# Remap § to `
# hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035}]}'
