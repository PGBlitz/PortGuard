#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705 - Deiteq
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
source /pg/portguard/functions/variables.sh

# KEY VARIABLE RECALL & EXECUTION
program=$(cat /pg/tmp/program_var)
mkdir -p /pg/var/cron/
mkdir -p /pg/var/cron
# FUNCTIONS START ##############################################################
primestart
# FUNCTIONS END ##############################################################
break=off && while [ "$break" == "off" ]; do primestart; done
