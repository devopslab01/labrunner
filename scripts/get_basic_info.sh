#!/bin/bash

#--- ENV -----------------------------------------------------------------------
SCRIPT_NAME="Get Basic Info (Ubuntu 18.04 LTS Bonic)"
export DEBIAN_FRONTEND="noninteractive"


#--- HEAD ----------------------------------------------------------------------
echo; echo "--- $SCRIPT_NAME ---"; echo;

cd /opt/runlab/

#--- ACTION --------------------------------------------------------------------
uname -a

#--- END -----------------------------------------------------------------------
echo; echo "Done."; echo
