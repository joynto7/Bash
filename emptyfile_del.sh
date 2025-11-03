#!bin/bash
read -p "Enter the Directory path:" dir 
find "$dir" -type f -empty -print -delete
echo "✅ Empty files deleted in $dir"
