# linux-lab

# My Linux Lab: From Zero to the Command Line 🚀

This repository documents my hands-on journey in mastering the Linux Command Line environment without relying on a GUI (Graphical User Interface).

The project focuses on practical Linux system administration, automation, troubleshooting, and operational tasks commonly used in Cloud Engineering and DevOps environments.

---

## 📁 Repository Structure

* `cheat-sheet.md`
  A collection of essential Linux command references written based on direct hands-on experience.

* `scripts/`
  A directory containing 5 functional Bash automation scripts, including:

  * System Monitoring
  * Log Backup
  * Automatic Cleanup
  * User Checker
  * Scheduled Maintenance Tasks

---

## 🧠 What I Learned & Why It Matters for Cloud Engineering

### 1. File System Hierarchy

* **What I Learned:**
  Understanding the purpose of critical Linux directories such as `/etc` for configuration files and `/var/log` for system logs.

* **Why It Matters:**
  Cloud Engineers must know exactly where to investigate when applications fail or when troubleshooting production servers. Efficient navigation of the Linux file system is essential for system administration and incident response.

---

### 2. Process & Resource Monitoring

* **What I Learned:**
  Using commands like `ps`, `htop`, `df`, and `free` to monitor server health and resource usage, as well as `kill` to terminate problematic processes.

* **Why It Matters:**
  In production cloud environments, servers can experience downtime due to high CPU usage, memory exhaustion, or insufficient disk space. Monitoring and managing system resources is a core operational responsibility.

---

### 3. User & Permission Management

* **What I Learned:**
  Securing sensitive files using `chmod` and `chown`, along with managing Linux users and permissions.

* **Why It Matters:**
  Security is a fundamental pillar of Cloud Architecture. Misconfigured file permissions or poor access control can expose sensitive data and create serious security vulnerabilities.

---

### 4. Text Processing & Pipelines

* **What I Learned:**
  Efficiently filtering and processing large datasets and log files using Linux pipelines (`|`) together with commands such as `grep`, `awk`, `cut`, `sort`, and `tail`.

* **Why It Matters:**
  Opening massive log files using traditional text editors can consume excessive resources or even crash a server. Command-line text processing enables fast and scalable troubleshooting in real-world production environments.

---

### 5. Automation & Task Scheduling (Cron)

* **What I Learned:**
  Creating automation using Bash scripting and scheduling recurring tasks with `crontab`.

* **Why It Matters:**
  Automation is at the core of DevOps and Cloud Engineering. Repetitive operational tasks such as nightly backups, log cleanup, and health checks should be automated to improve reliability and efficiency.

---

## 🛠 Environment

This project was completed using:

* **WSL2**
* **Ubuntu 26.04 LTS**
* **Bash Shell**
* **Git & GitHub**

as part of my Cloud Engineering portfolio and Linux administration learning journey.
