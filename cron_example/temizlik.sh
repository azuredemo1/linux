#!/bin/bash
log_file="temizlik.log"
echo "Temizlik başlatıldı: $(date -I'seconds')" >> "$log_file"

# 7 günden eski dosyaları sil
find /var/tmp -type f -mtime +7 -exec rm -f {} \;

echo "Temizlik tamamlandı: $(date -I'seconds')" >> "$log_file"
