#!/usr/bin/env bash
# Simple Port Checker
# Checks if common ports are open — no nmap 

read -rp "Enter target IP: " IP

echo ""
echo "--- Checking Common Ports on $IP ---"
echo ""

# List of common ports and their service names
declare -A PORTS
PORTS=(
  [21]="FTP"
  [22]="SSH"
