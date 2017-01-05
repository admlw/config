# .bashrc
# user specific aliases and functions

# source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# aliases ################################################################

alias getbt='sudo rmmod btusb; sudo modprobe btusb'

alias ll='ls -l --color=auto'

alias findfcl='/afs/fnal.gov/files/home/room1/dbrailsf/Scripts/utilities/findfcl'

alias lock='dm-tool lock' 

data=/uboone/data/users/alister1/
alias cddata='cd /uboone/data/users/alister1/'

app=/uboone/app/users/alister1/
alias cdapp='cd /uboone/app/users/alister1/'


##########################################################################


# preserve bash history from tmux ########################################

# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups

# append history entries..
shopt -s histappend

# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

##########################################################################


###########################################################################

print () {

if [ $# = 0 ]
  then
    echo "Not enough arguments"
    return 1;
fi

scp $1 alister@lapx.lancs.ac.uk: 
ssh -A alister@lapx.lancs.ac.uk lpr $1 -P hp_colour

return 0;
}

# added by Anaconda3 4.2.0 installer
export PATH="/home/adam/anaconda3/bin:$PATH"
