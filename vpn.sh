read -p "connect, disconnect, hosts, state, stats, help > " choice
if [ $choice == 'connect' ]; then
    read -p "Security Code > " code
    #read -sp "Password > " pass
    #PASS=$pass
    USERNAME='YOUR-USERNAME-HERE'
    PASS_ENCODED='YOUR-BASE64-ENCODED-PASSWORD-HERE'
    PASS=`echo $PASS_ENCODED | base64 --decode`
    printf "%s\n%s\n%s\ny" $USERNAME $PASS $code | /opt/cisco/anyconnect/bin/vpn -s connect [YOUR-VPN-HOST-NO-BRACKETS]
    # printf "%s\n%s\ny" $USERNAME $PASS | /opt/cisco/anyconnect/bin/vpn -s connect [YOUR-VPN-HOST-NO-BRACKETS]
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
elif [ $choice == '--version' ]; then
    echo "1.0.2"
else
    echo "Invalid choice given. Terminating script."
fi
