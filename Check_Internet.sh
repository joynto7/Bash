#!/bin/bash
ping -c 2 google.com &> /dev/null

if [ $? -eq 0 ]; then
  echo "✅ Internet is connected."
else
  echo "❌ No Internet connection."
fi
