# .bashrc
# user specific aliases and functions

# source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# aliases ################################################################

alias ll='ls -lh --color=auto'

alias findfcl='/nashome/d/dbrailsf/Scripts/utilities/findfcl'

data=/uboone/data/users/alister1/
alias cddata='cd /uboone/data/users/alister1/'

app=/uboone/app/users/alister1/
alias cdapp='cd /uboone/app/users/alister1/'

scratch=/pnfs/uboone/scratch/users/alister1
alias cdsc='cd /pnfs/uboone/scratch/users/alister1'

fcl=/uboone/app/users/alister1/macros/fcl/
alias cdfcl='cd /uboone/app/users/alister1/macros/fcl/'

alias srcub='source /grid/fermiapp/products/uboone/setup_uboone.sh'

##########################################################################


# preserve bash history from tmux ########################################

# avoid duplicates..
#export HISTCONTROL=ignoredups:erasedups//
#ts root number of event
#append history entries..
#shopt -s histappend

# After each command, save and reload history
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

###########################################################################


# source uboonecode on lapx ###############################################

function __srclapx 
{
  source /cvmfs/uboone.opensciencegrid.org/products/setup_uboone.sh; 
  setup uboonecode "$@";
}
alias srclapx='__srclapx'

###########################################################################


# source uboonecode on uboonegpvms ########################################

function __srcuboone
{
 source /grid/fermiapp/products/uboone/setup_uboone.sh;
 setup uboonecode "$@";
}
alias srcuboone='__srcuboone'

###########################################################################
alias config='usr/bin/git --git-dir=/nashome/a/alister1/.cfg/ --work-tree=/nashome/a/alister1'
