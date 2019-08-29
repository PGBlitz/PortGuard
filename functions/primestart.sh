#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705 - Deiteq
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################

# Main Area
primestart () {
ports=$(cat /pg/var/server.ports)
if [ "$ports" == "127.0.0.1:" ]; then guard="CLOSED" && opp="Open";
else guard="OPEN" && opp="Close"; fi
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🤖 Welcome to PortGuard ~ 📓 Reference: portguard.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Server Ports are Currently: [$guard]

1. $opp Ports
Z. EXIT
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

  read -p 'Type a Number | Press [ENTER]: ' typed < /dev/tty
  if [ "$typed" == "1" ]; then
    if [ "$guard" == "CLOSED" ]; then echo "" > /pg/var/server.ports
  else echo "127.0.0.1:" > /pg/var/server.ports; fi
    rebuild
elif [[ "$typed" == "z" || "$typed" == "Z" ]]; then exit;
else badinput; fi
}
