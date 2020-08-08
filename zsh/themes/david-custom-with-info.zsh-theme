local ret_status="%(?:%{$fg[green]%}❯:%{$fg[red]%}❯%s)"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg[cyan]%}# [%c] %{$fg[blue]%}% $(git_prompt_info)%{$fg[red]%}
${ret_status}%{$reset_color%} '
