#!/bin/bash

# Note - this tool is meant to be used to just profile/save information.
# This is not intended to be a maliious tool. If the connection is not secure, let them know!


# TODO: Curl to post to an endpoint to store SSID/password

echo "getting information about this connection and saving it..."
thisSSID=$(/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | grep -w 'SSID') 

echo "What's the password for $thisSSID ?"
read SSIDpassword

echo "Saved $thisSSID | $SSIDpassword"

echo "Testing default gateway connectivity, pinging 5x times"
ping 192.168.1.1 -c 5

echo "Opening default gateway site..."
open http://192.168.1.1

echo "Try the credentials... admin/admin"
