# Linux Command Cheat Sheet - My Experience

## 1. Navigation & File System
* `pwd` : Displays the current directory path (**Print Working Directory**).
* `cd [path]` : Changes the current directory. *Example:* `cd /var/log` to view system logs.
* `ls -la` : Lists all files and folders in the current directory, including hidden files, along with their detailed permissions.

## 2. File Manipulation & Searching
* `mkdir [folder_name]` : Creates a new folder/directory.
* `cp [source] [destination]` : Copies files or directories.
* `echo "text" > file` : Writes text to a file (**overwrites** existing content). Use `>>` to append text to a new line without overwriting.
* `find [location] -name "[pattern]"` : Searches for files by name within a specific location.
* `grep "[word]" [file]` : Searches for a specific word or text pattern inside a file. Extremely useful for log analysis.

## 3. User & Permission Management
* `sudo adduser [username]` : Creates a new user in the Linux system.
* `ls -l` : Displays detailed file information, including access permissions (**Read, Write, Execute**).
* `chmod [mode] [file]` : Changes file/folder permissions. *Example:* `chmod +x script.sh` makes a script executable.
* `sudo chown [user]:[group] [file]` : Changes the ownership of a file to another user or group.

## 4. Process & Resource Monitoring
* `sudo apt install [package]` : Installs new applications or tools (specifically on Debian/Ubuntu-based systems).
* `ps aux` : Displays all currently running processes in the system.
* `htop` : An interactive, text-based tool to monitor CPU, RAM, and processes in real-time.
* `kill [PID]` : Forcefully terminates a process using its **Process ID (PID)**.
* `df -h` : Displays disk space usage in a **human-readable** format.
* `free -h` : Displays memory (**RAM**) usage in a **human-readable** format.

## 5. Text Processing & Pipelines
* `|` (Pipe) : Redirects the output of the command on the left as the input for the command on the right.
* `wc -l [file]` : Counts the total number of lines in a file.
* `head -n [number]` / `tail -n [number]` : Views the first or last few lines of a file.
* `awk` : A powerful tool for parsing, filtering, and processing specific text columns from an output.

## 6. Shell Scripting & Automation (Cron)
* `#!/bin/bash` : Known as the **Shebang**. Placed at the very beginning of a script file to tell the system to execute it using the Bash shell.
* `crontab -e` : Opens the cron job configuration file to schedule automated tasks.
* `0 0 * * * [command]` : A cron format example used to run an automated task **every day at midnight**.
