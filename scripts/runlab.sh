#!/bin/bash

if ( [ -z "$1" ] || [ -z "$2" ] ); then
  echo "USAGE: $0 <action> <target> [arument1] [argument2] ..."
  exit 1
fi

#--- ENV -----------------------------------------------------------------------
SCRIPT_NAME="LabRunner"
USER="super"
ACTION=$1
TARGET=$2
ARGUME=`echo $@ |awk '{$1=$2=""; print}'`

#--- HEAD ----------------------------------------------------------------------
echo; echo "--- $SCRIPT_NAME ---"; echo;

echo "ACTION: $ACTION    TARGET: $TARGET    ARGUME: $ARGUME"
echo "  USER: $USER"

ssh $USER@$TARGET -n "sudo mkdir -p /opt/runlab"
ssh $USER@$TARGET -n "sudo chown $USER:$USER /opt/runlab"
scp $ACTION $USER@$TARGET:/opt/runlab/
ssh $USER@$TARGET -n "cd /opt/runlab; sudo ./$ACTION $ARGUME"

#--- END -----------------------------------------------------------------------
echo; echo "LabRunner done."; echo
