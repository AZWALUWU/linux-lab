#!/bin/bash
echo "Mencari total error CRITICAL hari ini..."
grep -c "CRITICAL" ~/linux-lab/logs/big-access.log
