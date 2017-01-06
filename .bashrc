# .bashrc
# user specific aliases and functions

# source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# aliases ################################################################

alias getbt='sudo rmmod btusb; sudo modprobe btusb'

alias ll='ls -l --color=auto'

alias findfcl='/nashome/d/dbrailsf/Scripts/utilities/findfcl'

alias lock='dm-tool lock' 

data=/uboone/data/users/alister1/
alias cddata='cd /uboone/data/users/alister1/'

app=/uboone/app/users/alister1/
alias cdapp='cd /uboone/app/users/alister1/'


##########################################################################

# added by Anaconda3 4.2.0 installer
export PATH="/home/adam/anaconda3/bin:$PATH"
