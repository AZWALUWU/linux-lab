#!/bin/bash
# Membersihkan file backup tar.gz agar disk tidak penuh
rm -f ~/linux-lab/backup/*.tar.gz
echo "$(date): Cleanup otomatis berhasil dijalankan!" >> ~/linux-lab/cleanup.log
