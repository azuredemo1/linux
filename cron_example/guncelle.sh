#!/bin/bash
echo "Sistem güncelleniyor: $(date)" | tee -a /var/log/guncelleme.log

# Debian tabanlı sistemler için:
apt update && apt upgrade -y | tee -a /var/log/guncelleme.log

# Red Hat tabanlı sistemler için (alternatif):
# dnf update -y | tee -a /var/log/guncelleme.log

echo "Güncelleme tamamlandı: $(date)" | tee -a /var/log/guncelleme.log
