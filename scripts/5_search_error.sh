#!/bin/bash
echo "Search CRITICAL total ERROR in day..."
grep -c "CRITICAL" ~/linux-lab/logs/big-access.log
