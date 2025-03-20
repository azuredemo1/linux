#!/bin/bash
suffix="$(date -I'seconds')"

if [ -n "$1" ]; then
   output_file="$1_$suffix.log"
else
   output_file="system_info_$suffix.log"
fi

# Sistem bilgilerini dosyaya yaz
echo "System Information:" > "$output_file"
echo "-------------------" >> "$output_file"
echo "Hostname: $(hostname)" >> "$output_file"
echo "OS: $(uname -a)" >> "$output_file"
echo "Memory:" >> "$output_file"
free -h >> "$output_file"
echo "Disk Space:" >> "$output_file"
df -h >> "$output_file"

echo "System info saved to $output_file."
