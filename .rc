# .bashrc
# user specific aliases and functions

function setup_env
{

  echo "logged into $(hostname)"
  echo " -- Setting up environtment variables..."

  case "$(hostname -s)" in
    dune*)
      app=/dune/app/users/alister1/       
      data=/dune/data/users/alister1/
      sc=/pnfs/dune/scratch/users/alister1/
      pers=/pnfs/dune/persistent/users/alister1/
      res=/pnfs/dune/resilient/users/alister1/
      ;;
    nova*)
      app=/nova/app/users/alister1/
      data=/nova/data/users/alister1/
      ana=/nova/ana/users/alister1/
      sc=/pnfs/nova/scratch/users/alister1/
      pers=/pnfs/nova/persistent/users/alister1/
      res=/pnfs/nova/resilient/users/alister1/
      nux=/pnfs/nova/persistent/analysis/nux/nus20/
      ;;
    uboone*)
      app=/uboone/app/users/alister1/
      data=/uboone/data/users/alister1/
      sc=/pnfs/uboone/scratch/users/alister1/
      pers=/pnfs/uboone/persistent/users/alister1/
      res=/pnfs/uboone/resilient/users/alister1/
      ;;
    *)
      echo "$(hostname) not recognised. No environment set."
      return 1
      ;;

  esac
  alias cdapp='cd "$app"'
  alias cddata='cd "$data"'
  alias cdana='cd $ana'
  alias cdsc='cd "$sc"'
  alias cdpers='cd "$pers"'
  alias cdres='cd $res'
  echo " -- app directory        : $app"
  echo " -- data directory       : $data"
  echo " -- ana directory        : $ana"
  echo " -- scratch directory    : $sc"
  echo " -- persistent directory : $pers"
  echo " -- resilient directory  : $res"

}

function displaypdf
{

  files=( "$@" )

  for i in "${!files[@]}"
  do
    file=${files[$i]}
    convert "$file" "${file%.*}".png
  done

  eog *.png

  rm *.png

}

# source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

##
## global
##

alias ll='ls -l --color=auto'

# stop ctrl-s hanging terminal
if [[ $- == *i* ]]
then
  stty -ixon
  # ctrl-s goes to start of line
  bind '"\C-s": beginning-of-line'
  setup_env
fi

##
## local
##

# helps with connecting bluetooth headphones to the pc
alias getbt='sudo rmmod btusb; sudo modprobe btusb'

# setup bluetooth keyboard config, changing ¬` key to \| key
alias backslash='xmodmap -e "keycode 49 = backslash bar"'

# allow usage of touchpad while typing
alias keybt='xinput set-prop 13 323 0' 

# src root
alias srcroot='source ~/root_v06_08/build/bin/thisroot.sh'

# added by Anaconda3 4.2.0 installer
export PATH="/home/adam/anaconda3/bin:$PATH"

##
## fermi
##

function setup_ci
{
  my_path="${1:-${PWD}}" 

  source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
  kinit
  setup cigetcert
  cigetcert -s fifebatch.fnal.gov
  voms-proxy-init -noregen -rfc -voms fermilab:/fermilab/uboone/Role=Analysis

  setup lar_ci
}

function setup_test_ci
{
  source /grid/fermiapp/products/setups.sh
  setup lar_ci -t
  setup generic_ci -t

  #generate a new proxy
  voms-proxy-destroy
  kinit
  setup cigetcert
  cigetcert -s fifebatch.fnal.gov
  voms-proxy-init -rfc -noregen -voms fermilab:/fermilab/uboone/Role=Analysis -valid 120:00
  voms-proxy-info -all
}

function echopath 
{
  sed 's/:/\n/g' <<< "$1"
}

function findrec
{
  echo finding "$2" in "$1"
  grep -rnw "$1" -e "$2"
}

alias ninstall='export workdir=${PWD}; ninja install'

#alias findfcl='/nashome/d/dbrailsf/Scripts/utilities/findfcl'
alias findfcl='/nashome/a/alister1/Scripts/findfcl/findfcl'

alias srcub='source /grid/fermiapp/products/uboone/setup_uboone.sh'

alias srcuboone='source /grid/fermiapp/products/uboone/setup_uboone.sh; setup uboonecode'

alias srcnova='source /cvmfs/nova.opensciencegrid.org/novasoft/slf6/novasoft/setup/setup_nova.sh "$@"'

alias srcdune='source /grid/fermiapp/products/dune/setup_dune.sh'

alias srcp='source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh'

alias voms='voms-proxy-init -noregen -rfc -voms fermilab:/fermilab/nova/Role=Analysis'

alias gallery='setup larsoftobject; setup gallery;'

alias bzip2='tar -cvjSf'

alias unbzip2='tar -xjf'

alias jobsub_q_held='jobsub_q --user alister1 --constraint "(jobstatus==5)"'

alias jobsub_rm_held='jobsub_rm --user alister1 --constraint "(jobstatus==5)"'


