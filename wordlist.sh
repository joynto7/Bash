#!/usr/bin/env bash
# Simple Wordlist Generator
# Generates common username/password combinations

read -rp "Enter a name : " NAME
read -rp "Enter a number: " NUM

echo ""
echo " <<<------ Generate a worlist ---->>>
echo "$NAME"
echo "$NAME$NUM"
echo "$NAME@$NUM"
echo "$NAME#$NUM"
echo "${NAME}123"
echo "${NAME}2024"
echo "${NAME}2025"
echo "${NAME}_admin"
echo "admin_${NAME}"
echo "admin"
echo "password"
echo "123456"
echo "${NAME}password"
echo "password${NUM}"

echo ""
echo "--- Saving to wordlist.txt ---"

cat > wordlist.txt << EOF
$NAME
$NAME$NUM
$NAME@$NUM
$NAME#$NUM
${NAME}123
${NAME}2024
${NAME}2025
${NAME}_admin
admin_${NAME}
admin
password
123456
${NAME}password
password${NUM}
EOF

echo "Done! Wordlist saved to wordlist.txt"
