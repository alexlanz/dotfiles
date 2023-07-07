local return_status="%(?:%{$fg_bold[green]%}➤ :%{$fg_bold[red]%}➤ %s)"

PROMPT='${return_status}%{$fg_bold[cyan]%}%n%{$reset_color%}@%{$fg_bold[blue]%}%m%{$reset_color%}:%{$fg_bold[magenta]%}%~%{$reset_color%}$ '
RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%} %{$fg_bold[red]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%} %{$fg_bold[green]%}✔%{$reset_color%}"
