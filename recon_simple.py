#!/usr/bin/env bash
#simple Recon using bash

read -rp "Enter Target IP:" IP
echo ""
echo " ---Ping Test --- "
ping  -c 3 "$IP"
