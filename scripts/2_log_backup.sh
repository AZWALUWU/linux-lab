#!/bin/bash
mkdir -p ~/linux-lab/backup
tar -czf ~/linux-lab/backup/log_backup_$(date +%F).tar.gz -C ~/linux-lab/logs big-access.log
echo "Log Backup succes ==> ~/linux-lab/backup!"
