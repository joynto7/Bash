#!/usr/bin/env bash
# Simple Network Recon Script
# Only use on systems you own or have permission to test!

read -rp "Enter target IP: " IP

echo ""
echo "--- Ping Test ---"
ping -c 3 "$IP"

echo ""
echo "--- Open Ports ---"
nmap -F "$IP"

echo ""
echo "--- Traceroute ---"
traceroute "$IP"

echo ""
echo "Done!"


