#!/bin/bash
echo "=== USER SYSTEM CHECK ==="
echo "User login now:"
whoami

echo "Total account on system:"
wc -l /etc/passwd | awk '{print $1}'
