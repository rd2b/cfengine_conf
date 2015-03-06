#!/bin/bash
#########################################################
#   Filename   : deploy.sh                             #
#   Description: TODO   #
#########################################################

PROGNAME="$(basename $0)"
quiet=false

set -u

cfinputs="/data/mycf/masterfiles/"


agent="/var/cfengine/masterfiles/"

rsync -av $cfinputs $agent
