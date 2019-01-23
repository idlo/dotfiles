# ls auto colorfull                                                                                
#export CLICOLOR=1
#export LSCOLORS=GxfxhxhxcxDxDxababbHbH
alias ls='ls -G'
alias ll='ls -al'
alias grep='grep --color'
# add env 
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# git prompt and completion
source ~/.git-completion.bash
# 显示分支官方实现
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-prompt.sh
  PROMPT_COMMAND='__git_ps1 "[\[\e[0m\]\t]\[\e[0;32m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]" " \\\$ "'
  #PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
fi
# load bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
