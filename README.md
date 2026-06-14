Here is the complete, comprehensive summary of your entire **"My Linux Lab: From Zero to Command Line"** project. You can save this as your master reference guide.

---

# Comprehensive Guide: My Linux Lab - From Zero to Command Line

This document serves as a complete log of all operations, commands, and scripts executed to build the Linux Lab from scratch using WSL2 (Ubuntu 22.04).

## Step 1: Environment Setup & Initialization

The first step was setting up the Linux environment on Windows and creating the project structure.

```bash
# 1. Install WSL2 (Run in Windows PowerShell as Administrator)
wsl --install

# 2. Update Linux packages and install Git (Run in Ubuntu Terminal)
sudo apt update && sudo apt upgrade -y
sudo apt install git -y

# 3. Create project structure and initialize Git
mkdir -p ~/linux-lab/scripts
cd ~/linux-lab
touch README.md cheat-sheet.md
git init

```

* **Explanation:** `mkdir -p` creates the parent directory and subdirectories simultaneously. `touch` creates empty files. `git init` turns the folder into a local repository.

## Step 2: File System Navigation

Exploring the root directory and understanding where system configurations and logs are stored.

```bash
# Navigate to the root directory
cd /

# List all files and directories with detailed information (including hidden ones)
ls -la

# Navigate to the system logs directory
cd /var/log

```

* **Explanation:** `/etc` is for configurations, `/var/log` is for system logs, and `/bin` is for essential command binaries.

## Step 3: File Manipulation & Deep Search

Creating mock files and searching through them—a crucial skill for finding lost configurations or specific errors in a server.

```bash
cd ~/linux-lab
mkdir backup logs

# Create and append text to a mock log file
echo "2026-06-11 10:00:00 [INFO] System booted successfully" > logs/app.log
echo "2026-06-11 10:10:00 [CRITICAL] Database connection failed!" >> logs/app.log

# Copy the file to the backup folder
cp logs/app.log backup/app.log.bak

# Find files by extension
find . -name "*.bak"

# Search for a specific word inside a file
grep "CRITICAL" logs/app.log

```

* **Explanation:** `>` overwrites a file, while `>>` appends to it. `find` locates files by name/type, and `grep` extracts specific lines containing the searched keyword.

## Step 4: User & Permission Management

Securing files by modifying permissions and ownership, and adding new users to the system.

```bash
# Add a new user
sudo adduser junior-dev

# Restrict file access to the owner only (Read & Write)
chmod 600 logs/app.log

# Make a script executable
touch scripts/deploy.sh
chmod +x scripts/deploy.sh

```

* **Explanation:** `chmod 600` changes permissions so only the owner can read and write (`-rw-------`). `chmod +x` grants execution rights.

## Step 5: Process Management & Resource Monitoring

Monitoring server health (CPU, RAM, Disk) and terminating rogue processes.

```bash
# Install htop for interactive monitoring
sudo apt install htop -y

# Create a background process (sleep for 1000 seconds)
sleep 1000 &

# Find the Process ID (PID) of the sleep command
ps aux | grep sleep

# Kill the process (replace [PID] with the actual number)
kill [PID]

# Check disk space and RAM usage (Human-readable format)
df -h
free -h

```

* **Explanation:** `ps aux` lists all running processes. `htop` provides a visual interface. `kill` stops a process using its ID.

## Step 6: Text Processing Pipeline

Generating a massive log file and analyzing it instantly using Linux pipes (`|`).

```bash
# Generate a 10,000-line log file instantly
seq 1 10000 | awk '{print "2026-06-12 00:00:"$1" ["($1%25==0?"CRITICAL":($1%5==0?"WARNING":"INFO"))"] User_"$1" accessed /api/v1/resource status="($1%25==0?"500":"200")}' > logs/big-access.log

# Check the total number of lines
wc -l logs/big-access.log

# Find all CRITICAL errors and count them
grep "CRITICAL" logs/big-access.log | wc -l

# Extract specific columns from the CRITICAL errors and show the top 3
grep "CRITICAL" logs/big-access.log | awk '{print $3, $4}' | head -n 3

```

* **Explanation:** The pipe `|` takes the output of the command on the left and passes it as the input to the command on the right. `awk` is used for column extraction.

## Step 7: Automation via Bash Scripts & Cron Jobs

Writing 5 functional Bash scripts and scheduling an automated cleanup task.

### The 5 Automation Scripts:

**1. System Monitor (`scripts/1_sys_monitor.sh`)**

```bash
#!/bin/bash
echo "=== SYSTEM RESOURCE MONITOR ==="
echo "--- Memory Usage ---"
free -h
echo "--- Disk Usage ---"
df -h /

```

**2. Log Backup (`scripts/2_log_backup.sh`)**

```bash
#!/bin/bash
mkdir -p ~/linux-lab/backup
tar -czf ~/linux-lab/backup/log_backup_$(date +%F).tar.gz -C ~/linux-lab/logs big-access.log
echo "Backup log successfully created!"

```

**3. Auto Cleanup (`scripts/3_auto_cleanup.sh`)**

```bash
#!/bin/bash
rm -f ~/linux-lab/backup/*.tar.gz
echo "$(date): Auto cleanup executed successfully!" >> ~/linux-lab/cleanup.log

```

**4. User Check (`scripts/4_user_check.sh`)**

```bash
#!/bin/bash
echo "=== USER SYSTEM CHECK ==="
echo "Currently logged in users:"
who
echo "Total registered user accounts:"
wc -l /etc/passwd | awk '{print $1}'

```

**5. Error Search (`scripts/5_search_error.sh`)**

```bash
#!/bin/bash
echo "Counting total CRITICAL errors today..."
grep -c "CRITICAL" ~/linux-lab/logs/big-access.log

```

### Execution Permissions & Cron Scheduling:

```bash
# Make all scripts executable
chmod +x ~/linux-lab/scripts/*.sh

# Open cron job scheduler
crontab -e

# Add this line to schedule the cleanup script every midnight
0 0 * * * /home/YOUR_USERNAME/linux-lab/scripts/3_auto_cleanup.sh

```

* **Explanation:** The Shebang `#!/bin/bash` tells the system to run the file as a Bash script. `crontab` automates script execution based on a time format (Minute Hour Day Month DayOfWeek).

## Step 8: GitHub Delivery & Packaging

Pushing the entire project to a public GitHub repository.

```bash
# Check repository status
git status

# Stage all files
git add .

# Commit changes
git commit -m "feat: complete lab deliverables, scripts, and documentation"

# Rename main branch
git branch -M main

# Link to remote GitHub repository (Replace URL with your own)
git remote add origin https://github.com/YOUR_USERNAME/linux-lab.git

# Push the code to GitHub
git push -u origin main

```

* **Explanation:** `git add .` stages all new and modified files. `git commit` saves a snapshot of the project. `git push` uploads the local repository to the remote GitHub server.
