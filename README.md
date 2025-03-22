# Task Automation Scripts

**Author:** Rishi  
**Student ID:** 1000120367 
**Last Updated:** 23 March 2025 12:45 AM 

This repository contains scripts for automating **user creation** and **backups** on Ubuntu systems running inside Docker containers.

---

## Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/animefriction/Task-Automation-Scripts.git
   ```

2. **Navigate to the project directory:**
   ```bash
   cd Task-Automation-Scripts
   ```

3. **Make the scripts executable:**
   ```bash
   chmod +x task1/user_creation.sh task2/backup.sh
   ```

4. **Install required dependencies (if necessary):**
   Ensure you have Docker installed on your system.

---

## Task 1: User Creation Script

The `user_creation.sh` script automates the process of creating users, assigning groups, and setting up shared folders in an Ubuntu Docker container.

### **Usage:**

```bash
./task1/user_creation.sh /path/to/users.csv
```

Where the `users.csv` file has the following format:
```csv
email,birthdate,groups,sharedFolder
edsger.dijkstra@tue.nl,1930-05-11,"sudo,staff",/staffData
```

### **What the script does:**
- Creates users based on the email (username = email before `@`).
- Sets a default password from the birthdate (MMYYYY).
- Adds users to specified groups.
- Creates a shared folder and sets proper permissions.
- Creates symbolic links to the shared folder in each user’s home directory.

---

## Task 2: Backup Script

The `backup.sh` script allows you to create a compressed backup (`.tar.gz`) of a specified directory and move it to a desired location.

### **Usage:**

```bash
./task2/backup.sh /path/to/directory
```

### **What the script does:**
- Creates a backup of the specified directory.
- Prompts you to provide a location to store the backup.
- Moves the backup file to the specified directory.

---

## GitHub Repository

- **Repository Name:** Task-Automation-Scripts  
- **Repository URL:** [https://github.com/animefriction/Task-Automation-Scripts](https://github.com/animefriction/Task-Automation-Scripts)
