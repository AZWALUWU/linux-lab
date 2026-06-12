#!/bin/bash
echo "=== USER SYSTEM CHECK ==="
echo "User yang sedang login saat ini:"
who
echo "Total akun user terdaftar di sistem:"
wc -l /etc/passwd | awk '{print $1}'
