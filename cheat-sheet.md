# Linux Command Cheat Sheet - My Experience

## 1. Navigation & File System
* `pwd` : Menampilkan posisi folder kita saat ini (Print Working Directory).
* `cd [path]` : Berpindah folder. Contoh: `cd /var/log` untuk melihat log sistem.
* `ls -la` : Melihat semua file/folder di direktori saat ini, termasuk yang tersembunyi (hidden files) beserta permission-nya.

## 2. File Manipulation & Searching
* `mkdir [nama_folder]` : Membuat folder baru.
* `cp [asal] [tujuan]` : Menyalin file atau folder.
* `echo "teks" > file` : Menulis teks ke file (menimpa isi lama). `>>` digunakan untuk menambah di baris baru tanpa menghapus isi lama.
* `find [lokasi] -name "[pola]"` : Mencari file berdasarkan nama di lokasi tertentu.
* `grep "[kata]" [file]` : Mencari kata atau pola teks tertentu di dalam file. Sangat berguna untuk analisis log.

## 3. User & Permission Management
* `sudo adduser [nama_user]` : Membuat user baru di dalam sistem Linux.
* `ls -l` : Menampilkan detail file termasuk hak akses (Read, Write, Execute).
* `chmod [mode] [file]` : Mengubah hak akses file/folder. Contoh: `chmod +x script.sh` membuat script bisa dijalankan, `chmod 600 file` mengunci file agar hanya bisa dibuka oleh owner.
* `sudo chown [user]:[group] [file]` : Mengubah kepemilikan file ke user atau grup lain.

## 4. Process & Resource Monitoring
* `sudo apt install [package]` : Menginstal aplikasi/tools baru di Ubuntu.
* `ps aux` : Melihat semua proses yang sedang berjalan di sistem.
* `htop` : Tool interaktif berbasis teks untuk memonitor CPU, RAM, dan proses secara real-time.
* `kill [PID]` : Menghentikan proses secara paksa menggunakan ID Proses.
* `df -h` : Menampilkan informasi penggunaan ruang disk/penyimpanan.
* `free -h` : Menampilkan informasi penggunaan memori (RAM).

## 5. Text Processing & Pipelines
* `|` (Pipe) : Mengirimkan output dari command sebelah kiri untuk diproses oleh command sebelah kanan.
* `wc -l [file]` : Menghitung jumlah total baris dalam suatu file.
* `head -n [jumlah]` / `tail -n [jumlah]` : Melihat beberapa baris pertama atau terakhir dari suatu file.
* `awk` : Tool powerful untuk memotong dan memproses kolom teks yang spesifik dari suatu output.

## 6. Shell Scripting & Automation (Cron)
* `#!/bin/bash` : Disebut Shebang, ditaruh di awal file script untuk memberi tahu sistem bahwa ini adalah script Bash.
* `crontab -e` : Membuka file konfigurasi cron job untuk menjadwalkan tugas otomatis.
* `0 0 * * * [command]` : Format cron untuk menjalankan tugas otomatis setiap tengah malam.
