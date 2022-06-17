read -p "connect, disconnect, hosts, state, stats, help > " choice
if [ $choice == 'connect' ]; then
    read -p "Security Code > " code
    #read -sp "Password > " pass
    #PASS=$pass
    USERNAME='YOUR-USERNAME-HERE'
    PASS='YOUR-PASSWORD-HERE'
    CMD="$USERNAME\n$PASS\n$code\ny"
    #CMD="$USERNAME\n$PASS\ny"
    printf $CMD | /opt/cisco/anyconnect/bin/vpn -s connect [YOUR-VPN-HOST-NO-BRACKETS]
elif [ $choice == 'disconnect' ]; then
    /opt/cisco/anyconnect/bin/vpn disconnect
elif [ $choice == 'hosts' ]; then
    /opt/cisco/anyconnect/bin/vpn hosts
elif [ $choice == 'state' ]; then
    /opt/cisco/anyconnect/bin/vpn state
elif [ $choice == 'stats' ]; then
    /opt/cisco/anyconnect/bin/vpn stats
elif [ $choice == 'help' ]; then
    /opt/cisco/anyconnect/bin/vpn --help
else
    echo "Invalid choice given. Terminating script."
fi
