# This script sets up a batman-adv mesh network with hopefully sensible defaults
# and restores normal operation when a mesh is no longer required.
#

export BLUE='\\033[1;94m'
export GREEN='\\033[1;92m'
export RED='\\033[1;91m'
export ENDC='\\033[1;00m'

case "$1" in
    start)
        # Make sure only root can run this script
        if [ $(id -u) -ne 0 ]; then
          echo "
$RED[!] This script must be run as root$ENDC
" >&2
          exit 1
        fi
        echo "
$BLUE[i] Starting mesh mode:$ENDC
"
	sudo service networkmanager stop
	sudo batctl if
	sudo ip link set up dev eth0
	sudo ip link set mtu 1532 dev wlan0
	sudo iwconfig wlan0 mode ad-hoc essid batmesh ap 02:12:34:56:78:9A channel 1
        sudo batctl if add wlan0
	sudo ifconfig wlan0 up
	sudo ifconfig bat0 up
	sudo avahi-autoipd bat0
        echo " $GREEN*$ENDC enabled Avahi assignment on bat0"
        echo "
$BLUE[i] Mesh Mode Started:$ENDC
"	

    ;;
    stop)
        # Make sure only root can run our script
        if [ $(id -u) -ne 0 ]; then
          echo "
$RED[!] This script must be run as root$ENDC
" >&2
          exit 1
        fi
        echo "
$BLUE[i] Stopping mesh mode:$ENDC
"
	sudo batctl if
	sudo avahi-autoipd bat0 --kill
	sudo ifconfig bat0 down
	sudo ifconfig wlan0 down
	sudo batctl if del bat0
	sudo iwconfig wlan0 mode managed
#	sudo service networkmanager start
        echo "
$BLUE[i] Mesh Mode Stopped:$ENDC
"	
    ;;
    restart)
        $0 stop
        $0 start
    ;;
    *)
    echo "Usage: $0 {start|stop|restart}"
    exit 1
    ;;
esac

exit 0
