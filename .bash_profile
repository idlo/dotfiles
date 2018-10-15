# get git branch name 
function git_branch {
  branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
  if [ "${branch}" != "" ];then
      if [ "${branch}" = "(no branch)" ];then
          branch="(`git rev-parse --short HEAD`...)"
      fi
      echo " $branch"
  fi
}
# chagne promotion string 1
export PS1='\[\e[0;32m\]\u\[\e[0m\]@\[\e[0;32m\]\h \[\e[1;34m\]\W \[\e[0m\]\t\[\e[0;32m\]$(git_branch)\[\e[0m\] \$ '
# ls auto colorfull
#export CLICOLOR=1
#export LSCOLORS=GxfxhxhxcxDxDxababbHbH
alias ls='ls -G'
alias ll='ls -al'
alias grep='grep --color'
# add env 
export PATH="/usr/local/sbin:$PATH"
# load bash completion only install bash-completion in use
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
