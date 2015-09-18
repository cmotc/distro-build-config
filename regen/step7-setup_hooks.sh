#! /bin/sh
mkdir -p config/includes.chroot/etc/NetworkManager/dispatcher.d/
echo "#!/bin/sh

# From Tails repo:
# https://git-tails.immerda.ch/tails/plain/config/chroot_local-hooks/05-disable_swapon
#
# This hook avoid use any swap filesystem that might exist on the host machine hard drive

set -e

echo \"Disabling swapon\"

# Disable swapon to avoid initscripts to setup swap space.

SWAPON=/sbin/swapon

# Move any /sbin/swapon installed by any package out of the way,
# now (--rename) as well for any future one (hint: apt-get upgrade...).
dpkg-divert --rename --add /sbin/swapon

# Install a custom noop swapon executable instead.
cat > \$SWAPON << 'EOF'
#!/bin/sh
/bin/true
EOF
chmod 755 \$SWAPON" > config/hooks/disable-swapon.hook.chroot

echo "#!/bin/sh

set -e

echo \"Configuring I2P\"
#This is a modified version of the i2p service configuration from TAILS which
#I used because it makes accomodations for liveCD's by running in hidden mode,
#and which disables outproxies in favor of Tor. My only change was to re-enable
#ipv6. I did not delete the lines associated with the TAILS configuration, just
#commented them out. You can tell where they are because they are commented with
# #--
#Original: https://git-tails.immerda.ch/tails/plain/config/chroot_local-hooks/16-i2p_config.hook.chrot


I2P=\"/usr/share/i2p\"
WRAPPER=\"/etc/i2p/wrapper.config\"

# This must be set in order for the i2p init script to work
sed -i 's/^RUN_DAEMON=.*\$/RUN_DAEMON=\"true\"/' /etc/default/i2p

# Remove the outproxy from the tunnel on port 4444
# This will remove the following lines:
#      tunnel.0.proxyList=false.i2p
#      tunnel.0.option.i2ptunnel.httpclient.SSLOutproxies=false.i2p
# The SSLOutproxies option was first set in I2P 0.9.15
sed -i '/^.*tunnel\.0\.\(proxyList\|option\.i2ptunnel\.httpclient\.SSLOutproxies\)/d' \"\$I2P/i2ptunnel.config\"

# Disable the https outproxy (port 4445)
sed -i 's|^.*\(tunnel\.6\.startOnLoad\).*|\1=false|' \"\$I2P/i2ptunnel.config\"

# Don't serve the router console on IPv6
sed -i 's|^clientApp\.0\.args=7657\s\+::1,127\.0\.0\.1|clientApp.0.args=7657 127.0.0.1|' \"\$I2P/clients.config\"

# Disable IPv6 in the wrapper
sed -i 's|^.*\(wrapper\.java\.additional\.5=-Djava\.net\.preferIPv4Stack=\).*|\1true|' \"\$WRAPPER\"
#--sed -i 's|^.*\(wrapper\.java\.additional\.6=-Djava\.net\.preferIPv6Addresses=\).*|\1false|' \"\$WRAPPER\"

# Tails specific router configs:
# * i2cp: allows java clients to communicate with I2P outside of the JVM. Disabled.
# * IPv6: Disabled
# * HiddenMode: Enabled
# * In-I2P Network Updates: Disabled
# * Inbound connections: Disabled (setting is \"i2cp.ntcp.autoip\")
# * Disable I2P plugins
cat > \"\$I2P/router.config\" << EOF
# NOTE: This I2P config file must use UTF-8 encoding
i2cp.disableInterface=true
i2np.ntcp.ipv6=false
i2np.ntcp.autoip=false
#--i2np.udp.ipv6=false
router.isHidden=true
router.updateDisabled=true
router.enablePlugins=false
EOF

cat > \"\$I2P/susimail.config\" << EOF
susimail.pop3.leave.on.server=true
EOF
" > config/hooks/16-i2p_config.hook.chroot
chmod 777 config/hooks/16-i2p_config.hook.chroot
echo "#!/bin/sh

# I2P isn't started automatically at system boot.
# Instead, it is started with this hook script.

# Import i2p_is_enabled().
. /usr/local/lib/i2p-shell-library/i2p.sh

# Don't even try to run this script if I2P is not enabled.
i2p_is_enabled || exit 0

# don't run if interface is 'lo'
[ \$1 = \"lo\" ] && exit 0

if [ \$2 = \"up\" ]; then
    /usr/local/sbin/i2p-i2p start &
fi
" > config/includes.chroot/etc/NetworkManager/dispatcher.d/30-i2p.sh
chmod a+x config/includes.chroot/etc/NetworkManager/dispatcher.d/30-i2p.sh