
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