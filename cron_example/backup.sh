#!/bin/bash
backup_dir="./backup"
mkdir -p "$backup_dir"

# Mevcut yedek dosyası varsa, eski yedek olarak sakla
if [ -f "$backup_dir/backup.tar.gz" ]; then
    mv "$backup_dir/backup.tar.gz" "$backup_dir/backup_old.tar.gz"
fi

# Yeni yedekleme
tar -czf "$backup_dir/backup.tar.gz" "/home/$USER/.bashrc"

# Log kaydı
echo "Yedekleme tamamlandı: $(date)" >> backup.log
