#!/bin/bash
echo "Press [CTRL+C] to stop monitoring..."
while true; do
  echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')%"
  sleep 2
done
