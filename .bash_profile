
source ~/.bashrc

quals=e17
build=prof

nux_quals=e15
nux_build=prof

# develop functions
setup_mrb ()
{
    export NOVADEVTOPDIR=/nova/app/users/alister1/novasoft/
    source /cvmfs/nova.opensciencegrid.org/externals/setup
    setup mrb
}

develop_nova ()
{
    export NOVADEVTOPDIR=/nova/app/users/alister1/novasoft/
    source /cvmfs/nova.opensciencegrid.org/externals/setup
    setup mrb
    cd $NOVADEVTOPDIR
    source $NOVADEVTOPDIR/localProducts_novasoft/setup
    export PRODUCTS=/grid/fermiapp/products/common/db:/cvmfs/nova.opensciencegrid.org/pidlibs/products:${PRODUCTS}
    setup ninja v1_8_2
    setup git
    cd $NOVADEVTOPDIR/build_slf6.x86_64
    mrbsetenv

}

setup_nova ()
{
    source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
    export MYLP=/nova/app/users/alister1/novasoft/localProducts_novasoft/
    export PRODUCTS=${PRODUCTS}:/cvmfs/nova.opensciencegrid.org/externals/:/cvmfs/nova.opensciencegrid.org/pidlibs/products
    export PRODUCTS=${MYLP}:${PRODUCTS}
    setup novasoft develop -q ${quals}:${build}
    echo "Built local products from directory ${MYLP}"
}

setup_nova_grid ()
{
    source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
    export PRODUCTS=${PRODUCTS}:/cvmfs/nova.opensciencegrid.org/externals/:/cvmfs/nova.opensciencegrid.org/pidlibs/products
    export PRODUCTS=/nova/app/users/alister1/novasoft/localProducts_novasoft/:${PRODUCTS}
    setup novasoft develop -q ${quals}:${build}:grid

    setup sam_web_client

}

build_grid()
{
  source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
  export PRODUCTS=/nova/app/users/alister1/novasoft/localProducts_novasoft:/cvmfs/nova.opensciencegrid.org/externals/:/grid/fermiapp/products/common/db:/nova/data/pidlibs/products:${PRODUCTS}
  setup ninja v1_8_2
  source ../srcs/novasoft/ups/setup_for_development -p ${quals}:grid
  buildtool --generator ninja -i -I /nova/app/users/alister1/novasoft/localProducts_novasoft
}

# nux functions
setup_mrb_nux ()
{
    export NOVADEVTOPDIR=/nova/app/users/alister1/novasoft_nux_branch/
    source /cvmfs/nova.opensciencegrid.org/externals/setup
    setup mrb
}

develop_nova_nux ()
{
    export NOVADEVTOPDIR=/nova/app/users/alister1/novasoft_nux_branch/
    source /cvmfs/nova.opensciencegrid.org/externals/setup
    setup mrb
    cd $NOVADEVTOPDIR
    source $NOVADEVTOPDIR/localProducts_novasoft/setup
    export PRODUCTS=/grid/fermiapp/products/common/db:/cvmfs/nova.opensciencegrid.org/pidlibs/products:${PRODUCTS}
    setup ninja v1_8_2
    setup git
    cd $NOVADEVTOPDIR/build_slf6.x86_64
    mrbsetenv

}

setup_nova_nux ()
{
    source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
    export MYLP=/nova/app/users/alister1/novasoft_nux_branch/localProducts_novasoft/
    export PRODUCTS=${PRODUCTS}:/cvmfs/nova.opensciencegrid.org/externals/:/cvmfs/nova.opensciencegrid.org/pidlibs/products
    export PRODUCTS=${MYLP}:${PRODUCTS}
    setup novasoft nuxdev -q ${nux_quals}:${nux_build}
    echo "Built local products from directory ${MYLP}"
}

setup_nova_grid_nux ()
{
    source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
    export PRODUCTS=${PRODUCTS}:/cvmfs/nova.opensciencegrid.org/externals/:/cvmfs/nova.opensciencegrid.org/pidlibs/products
    export PRODUCTS=/nova/app/users/alister1/novasoft_nux_branch/localProducts_novasoft/:${PRODUCTS}
    setup novasoft nuxdev -q ${nux_quals}:${nux_build}:grid

    setup sam_web_client
}

build_grid_nux()
{
  source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
  export NOVASOFT_DIR=/nova/app/users/alister1/novasoft_nux_branch/srcs/novasoft/
  export PRODUCTS=/nova/app/users/alister1/novasoft_nux_branch/localProducts_novasoft:/cvmfs/nova.opensciencegrid.org/externals/:/grid/fermiapp/products/common/db:/nova/data/pidlibs/products:${PRODUCTS}
  setup ninja v1_8_2
  source ../srcs/novasoft/ups/setup_for_development -p ${quals}:grid
  buildtool --generator ninja -i -I /nova/app/users/alister1/novasoft_nux_branch/localProducts_novasoft
}


setup_globes (){

  cd $app/globes/globes-3.0.11
  make
  make install
  PATH=$PATH:/nova/app/users/alister1/globes/install//bin

}
