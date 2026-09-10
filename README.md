
# 🚀 Bash Automation & Linux System Administration Projects

This repository contains production-ready Bash shell scripts designed to automate routine Linux system administration tasks, enhance operational efficiency, and streamline server management.

---

## 📁 Included Projects

### 1. 📦 File Archiver Script (`/file-archiver`)
* **Description:** Automates log and file cleanup by archiving files older than a specified number of days or exceeding a target size limit to optimize storage.
* **Key Features:** Uses `find` and `tar` commands, logs execution details, and handles automatic cleanup.

### 2. 👤 Local User Management Script (`/user-management`)
* **Description:** Streamlines user onboarding on Linux servers by automating user account creation, assigning temporary passwords, forcing password reset on first login, and granting `sudo` access safely.
* **Key Features:** Input validation, error handling, secure user provisioning, and `chage` credential management.

---

## 🛠️ Prerequisites & Setup

* **Operating System:** Linux (Ubuntu / Debian / RHEL) or Google Cloud Shell
* **Shell Environment:** Bash

### Execution Permissions
Before running the scripts, grant execution permissions:

```bash
chmod +x file-archiver/*.sh user-management/*.sh

## USAGE:-

Bash
# Run File Archiver
./file-archiver/file_archiver.sh

# Run User Management Script
./user-management/user_management.sh


### 📊 Sample Output (User Management)
stawar611@cloudshe11:~$ sudo bash user_create.sh TAMAR for QA TEST TEAm passwd:password changed.
username:TAMAR PATIL
password：898855885555555
server01-15853605678955-default r


