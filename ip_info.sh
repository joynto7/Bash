
#!/usr/bin/env bash
# Simple IP Info Lookup
# Gets public info about any IP address
 
read -rp "Enter an IP address: " IP
 
echo ""
echo "--- IP Info for $IP ---"
echo ""
# ipinfo.io is a free public API that returns IP details as JSON
RESULT=$(curl -s "https://ipinfo.io/$IP/json")
 
# Parse each field from the JSON response
echo "  IP       : $(echo "$RESULT" | grep '"ip"'       | cut -d'"' -f4)"
echo "  Hostname : $(echo "$RESULT" | grep '"hostname"' | cut -d'"' -f4)"
echo "  City     : $(echo "$RESULT" | grep '"city"'     | cut -d'"' -f4)"
echo "  Country  : $(echo "$RESULT" | grep '"country"'  | cut -d'"' -f4)"
echo "  Org      : $(echo "$RESULT" | grep '"org"'      | cut -d'"' -f4)"
echo "  Location : $(echo "$RESULT" | grep '"loc"'      | cut -d'"' -f4)"
 
echo ""
echo "Done!"