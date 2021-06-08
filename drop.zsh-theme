# Configs
setopt PROMPT_SUBST
autoload colors
colors

# Functions
getUser(){
  local color="%F{yellow}"
  local resetColor="%f"
  echo "${color}<${resetColor}%(?."%F{green}%n%f"."%F{red}%n%f")${color}/>${resetColor}"
}

getDir(){
  local directory="${PWD/#$HOME/~}"
  local color="%F{cyan}" 
  local resetColor="%f"
  echo "%F{yellow}%f  ${color}${directory}${resetColor}"
}

getTime(){
  local color1="%F{yellow}"
  local color2="%F{cyan}"
  local resetColor="%f"
  echo "${color1}[${color2}%*${color1}]${resetColor}"
}

# Git
ZSH_THEME_GIT_PROMPT_PREFIX="%F{red} [%f%F{yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}] %f "
ZSH_THEME_GIT_PROMPT_CLEAN="%F{red}] %f "

# Prompts
PROMPT='$(getUser) on $(getDir)$(git_prompt_info)  '
RPROMPT='  $(getTime)'
