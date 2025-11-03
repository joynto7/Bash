#!/bin/bash
echo "<<<<------- SyStem INfo ---------->>>"  
echo "Hostname : $(hostname)"  
echo "User :$(whoami)"  
echo "Uptime : $(upitme -p)"  
echo "Memory Usage :"  
free -h
echo "Disk Usage:"
df -h | grep '^/dev/'