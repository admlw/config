setup_vnc (){
  echo "opening nova tunnels"
  # fd
  ssh -L 5981:localhost:5951 -N -f -l novadaq novadaq-far-mgr-02.fnal.gov
  ssh -L 5982:localhost:5952 -N -f -l novadaq novadaq-far-mgr-02.fnal.gov

  # nd
  ssh -L 5991:localhost:5951 -N -f -l novadaq novadaq-near-mgr-02.fnal.gov
  ssh -L 5992:localhost:5952 -N -f -l novadaq novadaq-near-mgr-02.fnal.gov

  # cr03
  ssh -L 5973:localhost:5953 -N -f -l novadaq novadaq-near-gateway-01.fnal.gov

  # expert
  ssh -L 5983:localhost:5953 -N -f -l novadaq novadaq-far-gateway-01.fnal.gov
  ssh -L 5984:localhost:5953 -N -f -l novadaq novadaq-near-gateway-01.fnal.gov
  echo "done"
}

kill_vnc (){
  echo "closing nova tunnels"
  pkill -f 'ssh -L 5981:localhost:5951 -N -f -l novadaq novadaq-far-mgr-02.fnal.gov'
  pkill -f 'ssh -L 5982:localhost:5952 -N -f -l novadaq novadaq-far-mgr-02.fnal.gov'
  pkill -f 'ssh -L 5973:localhost:5953 -N -f -l novadaq novadaq-near-gateway-01.fnal.gov'

  pkill -f 'ssh -L 5991:localhost:5951 -N -f -l novadaq novadaq-near-mgr-02.fnal.gov'
  pkill -f 'ssh -L 5992:localhost:5952 -N -f -l novadaq novadaq-near-mgr-02.fnal.gov'

  pkill -f 'ssh -L 5983:localhost:5953 -N -f -l novadaq novadaq-far-gateway-01.fnal.gov'
  pkill -f 'ssh -L 5984:localhost:5953 -N -f -l novadaq novadaq-near-gateway-01.fnal.gov'
  echo "done"
}
