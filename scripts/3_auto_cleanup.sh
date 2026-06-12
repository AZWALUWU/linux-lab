#!/bin/bash
# Membersihkan file backup tar.gz agar disk tidak penuh
rm -f ~/linux-lab/backup/*.tar.gz
echo "$(date): Cleanup automation succes running!" >> ~/linux-lab/cleanup.log
