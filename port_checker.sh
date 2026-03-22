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
  [23]="Telnet"
  [25]="SMTP"
  [53]="DNS"
  [80]="HTTP"
  [110]="POP3"
  [143]="IMAP"
  [443]="HTTPS"
  [445]="SMB"
  [3306]="MySQL"
  [3389]="RDP"
  [8080]="HTTP-Alt"

 for PORT in "${!PORTS[@]}"; do
  SERVICE=${PORTS[$PORT]}
