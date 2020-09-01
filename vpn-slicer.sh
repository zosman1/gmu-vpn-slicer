SERVER=vpn.gmu.edu
SLICE_SERVERS='zeus-1.vse.gmu.edu zeus-2.vse.gmu.edu zeus.vse.gmu.edu mason.gmu.edu'
VPN_USER=
TYPE=STUDENT
PASS_FILE=./.pass_file

cat "$PASS_FILE" | openconnect "$SERVER" -u "$VPN_USER" -s "vpn-slice $SLICE_SERVERS" -g "$TYPE" --passwd-on-stdin -v > /home/pi/vpn.log 2>&1
