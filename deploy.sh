#!/bin/bash
#########################################################
#   Filename   : deploy.sh                             #
#   Description: TODO   #
#########################################################

PROGNAME="$(basename $0)"
quiet=false

set -u

cfinputs="./masterfiles/"

agent="/var/cfengine/masterfiles/"

if test -d "$cfinputs"; then 
    rsync -av $cfinputs $agent
else
    echo "$cfinputs n'existe pas"
    exit 1
fi

