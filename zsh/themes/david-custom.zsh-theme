local ret_status="%(?:%{$fg[green]%}❯:%{$fg[red]%}❯%s)"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#RVM and git settings
if [[ -s ~/.rvm/scripts/rvm ]] ; then
  RPS1='$(git_prompt_info)%{$fg[red]%}[`~/.rvm/bin/rvm-prompt`]%{$reset_color%} %* $EPS1'
else
  if which rbenv &> /dev/null; then
    RPS1='$(git_prompt_info)%{$fg[red]%}[`rbenv version | sed -e "s/ (set.*$//"`]%{$reset_color%} %* $EPS1'
  else
    RPS1='$(git_prompt_info)%{$reset_color%} %* $EPS1'
  fi
fi

PROMPT='%{$fg[cyan]%}[%c]%{$fg[blue]%}% %{$reset_color%} ${ret_status}%{$reset_color%} '
