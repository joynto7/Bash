#!/usr/bin/env bash
# Simple Subdomain Finder
# Checks common subdomains of a domain

read -rp "Enter domain (e.g. example.com): " DOMAIN

echo ""
echo "--- Checking Subdomains of $DOMAIN ---"
echo ""

SUBDOMAINS=(
  "www"
  "mail"
  "ftp"
  "admin"
  "blog"
  "dev"
  "test"
  "api"
  "shop"
  "portal"
  "vpn"
  "remote"
  "staging"
  "server"
  "backup"
)

for SUB in "${SUBDOMAINS[@]}"; do
  FULL="$SUB.$DOMAIN"


if [[ -n "$RESULT" ]]; then
    echo "  [FOUND]  $FULL  -->  $RESULT"
  else
    echo "  [none]   $FULL"
  fi
done


echo ""
echo "Done!"
