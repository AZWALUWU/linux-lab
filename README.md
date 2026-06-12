# My Linux Lab: From Zero to Command Line 🚀

Repository ini adalah dokumentasi proyek praktis saya dalam menguasai Linux Command Line secara penuh tanpa GUI (Graphical User Interface). Sebagai calon Cloud Engineer, penguasaan pondasi ini sangat krusial karena manajemen infrastruktur cloud (AWS, GCP, Azure) 99% dilakukan melalui terminal.

## 📁 Struktur Repository
* `cheat-sheet.md` : Dokumentasi command line esensial yang ditulis berdasarkan pengalaman hands-on langsung.
* `scripts/` : Folder berisi 5 bash script otomatisasi fungsional (System Monitoring, Log Backup, Auto Cleanup, User Checking, & Error Searching).

## 🧠 Apa yang Saya Pelajari & Mengapa Ini Penting bagi Cloud Engineer?

1. **File System Hierarchy**
   * *Yang Dipelajari:* Memahami fungsi direktori krusial seperti `/etc` (konfigurasi) dan `/var/log` (log sistem).
   * *Kenapa Penting:* Cloud Engineer harus tahu persis ke mana harus pergi saat aplikasi mengalami error atau saat ingin mengubah konfigurasi web server (seperti Nginx/Apache) tanpa membuang waktu.

2. **Process & Resource Monitoring**
   * *Yang Dipelajari:* Menggunakan `ps`, `htop`, `df`, dan `free` untuk melacak kesehatan server, serta `kill` untuk menghentikan proses bermasalah.
   * *Kenapa Penting:* Di lingkungan produksi, server cloud bisa mengalami *downtime* akibat kehabisan RAM atau disk penuh. Kemampuan mendiagnosis hal ini secara cepat melalui terminal adalah penyelamat sistem.

3. **User & Permission Management**
   * *Yang Dipelajari:* Mengamankan file sensitif menggunakan `chmod` (hak akses) dan `chown` (kepemilikan), serta manajemen user baru dengan `adduser`.
   * *Kenapa Penting:* Keamanan (*Security*) adalah pilar utama Cloud Architecture. Membocorkan hak akses file log atau script deployment ke user yang salah bisa memicu celah keamanan yang fatal.

4. **Text Processing & Pipeline**
   * *Yang Dipelajari:* Menyaring data besar (file log 10.000 baris) secara instan menggunakan kombinasi `|` (pipe), `grep`, `awk`, `head`, dan `tail`.
   * *Kenapa Penting:* Membuka file log berukuran gigabyte dengan text editor biasa bisa membuat server *crash*. Menggunakan pipeline Linux memungkinkan analisis data besar secara efisien langsung di memory.

5. **Automation & Task Scheduling (Cron)**
   * *Yang Dipelajari:* Membuat automasi menggunakan Bash Script dan menjadwalkannya secara berkala menggunakan `crontab`.
   * *Kenapa Penting:* Otomasi adalah core dari DevOps dan Cloud. Tugas berulang seperti backup data malam hari dan pembersihan log lama wajib berjalan otomatis tanpa intervensi manusia.

---
*Proyek ini diselesaikan menggunakan WSL2 (Ubuntu 22.04 LTS) sebagai bagian dari portofolio Cloud Engineering saya.*
# linux-lab
