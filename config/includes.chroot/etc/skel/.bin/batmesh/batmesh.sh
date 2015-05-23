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
        
        # Check torrc config file
        grep -q -x 'VirtualAddrNetwork 10.192.0.0/10' /etc/tor/torrc
        if [ $? -ne 0 ]; then
            echo "
$RED[!] Please add the following to your /etc/tor/torrc and restart service:$ENDC
" >&2
            echo "$BLUE#----------------------------------------------------------------------#$ENDC"
            echo "$BLUE#----------------------------------------------------------------------#$ENDC
"
            exit 1
        fi

        echo "
$BLUE[i] Starting mesh mode:$ENDC
"
        
        if [ ! -e /var/run/tor/tor.pid ]; then
            echo " $RED*$ENDC Tor is not running! Quitting...
" >&2
            exit 1
        fi
        

        echo 'nameserver 127.0.0.1' > /etc/resolv.conf
        echo " $GREEN*$ENDC Modified resolv.conf"

        echo "$BLUE[i] Are you using batman-adv?$ENDC
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

        echo 'nameserver 208.67.222.222' >  /etc/resolv.conf
        echo 'nameserver 208.67.220.220' >> /etc/resolv.conf
        echo " $GREEN*$ENDC Modified resolv.conf to use OpenDNS"
        
        iptables -F
        iptables -t nat -F
        echo " $GREEN*$ENDC Deleted all iptables rules
"
	sudo service ferm restart
        echo " $GREEN*$ENDC Restarted system firewall
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
