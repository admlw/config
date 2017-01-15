# .bashrc
# user specific aliases and functions

# source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

##
## global
##

alias ll='ls -l --color=auto'

##
## local
##

# helps with connecting bluetooth headphones to the pc
alias getbt='sudo rmmod btusb; sudo modprobe btusb'

# setup bluetooth keyboard config, changing ¬` key to \| key
alias keybt='xinput set-prop 13 323 0' 

# added by Anaconda3 4.2.0 installer
export PATH="/home/adam/anaconda3/bin:$PATH"

##
## fermi
##

data=/uboone/data/users/alister1/
alias cddata='cd /uboone/data/users/alister1/'

app=/uboone/app/users/alister1/
alias cdapp='cd /uboone/app/users/alister1/'

sc=/pnfs/uboone/scratch/users/alister1/
alias cdsc='cd /pnfs/uboone/scratch/users/alister1/'

pers=/pnfs/uboone/persistent/users/alister1/
alias cdpers='cd /pnfs/uboone/persistent/users/alister1/'

fcl='cd /uboone/app/users/alister1/marcos/fcl/'

alias findfcl='/nashome/d/dbrailsf/Scripts/utilities/findfcl'
