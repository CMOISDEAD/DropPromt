# Configs
setopt PROMPT_SUBST
autoload colors
colors

# Functions
getUser(){
  echo '%(?.'%{$fg[green]%}%n%{$reset_color%}'.'%{$fg[red]%}%n%{$reset_color%}')'
}

getDir(){
  echo '%F{cyan}%2/%f'
}

# Git
ZSH_THEME_GIT_PROMPT_PREFIX=" ("
ZSH_THEME_GIT_PROMPT_SUFFIX=" )"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=" "

# Prompts
PROMPT='  <$(getUser)/> on $(getDir)$(git_prompt_info):'
RPROMPT=' %*'
