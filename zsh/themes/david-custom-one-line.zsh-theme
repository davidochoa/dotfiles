local ret_status="%(?:%{$fg[green]%}❯:%{$fg[red]%}❯%s)"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function rbenv_version_prompt_info() {
  local ruby_version
  ruby_version=$(rbenv version 2> /dev/null) || return ''
  echo "$ruby_version" | sed 's/[ \t].*$//'
}

function rbenv_gemset_prompt_info() {
  local ruby_gemset
  ruby_gemset=$(rbenv gemset active 2> /dev/null) || return ''
  echo "@$ruby_gemset" | sed -e "s/ global$//"
}

RPS1='$(git_prompt_info)%{$fg[red]%}[$(rbenv_version_prompt_info)$(rbenv_gemset_prompt_info)]%{$reset_color%} %* $EPS1'

PROMPT='%{$fg[cyan]%}[%c]%{$fg[blue]%}% %{$reset_color%} ${ret_status}%{$reset_color%} '
