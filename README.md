DS1202 Project
Project Overview

This project contains a shell script for generating a basic system-information report on the lab server.

The sysinfo.sh script reports the following system information:

Hostname
Operating system and kernel information
CPU load and system uptime
Memory usage
Disk usage
Date and time when the report was generated

The enhanced version of the script also saves the generated report to logs/sysinfo.log.

Setup
1. Generate an SSH Key

An Ed25519 SSH key pair was generated using:

ssh-keygen -t ed25519 -C 26FTT1108@iib.politeknikbrunei.com

The public key was copied to the lab server and used for passwordless SSH authentication.

2. Log in to the Lab Server

The lab server was accessed using SSH:

ssh 26FTT1108@iib.politeknikbrunei.com
3. Create the Project Directories

The project directory structure was created using:

mkdir -p ~/ds1202-project/{scripts,docs,logs}

The project directory permissions were set using:

chmod 755 ~/ds1202-project
4. Create and Run the System Information Script

The script is located at:

scripts/sysinfo.sh

It was made executable using:

chmod +x ~/ds1202-project/scripts/sysinfo.sh

The script can be executed using:

~/ds1202-project/scripts/sysinfo.sh

The enhanced version also creates:

logs/sysinfo.log
Git Workflow

The project was managed using Git.

Initial Commit

The initial directory structure and system-information script were committed using:

git add .
git commit -m "Add directory structure and sysinfo script"
Feature Branch

A feature branch was created using:

git switch -c feature-logging

The system-information script was then enhanced with additional information and logging.

The enhancement was committed using:

git commit -am "Add logging section to sysinfo"
Merge

The feature branch was merged back into the main branch using:

git switch main
git merge feature-logging
GitHub Push

The GitHub repository was added as the remote origin:

git remote add origin git@github.com:<NaifNail>/ds1202-project.git

The main branch was pushed using:

git push -u origin main

The feature branch was also pushed using:

git push origin feature-logging
Running the Project

From the project directory:

cd ~/ds1202-project

Run the script:

./scripts/sysinfo.sh

The generated report is displayed in the terminal and saved to:

logs/sysinfo.log
Evidence Screenshots

The evidence PDF contains screenshots demonstrating:

Ed25519 SSH key-pair generation.
The public key in the server's authorized_keys file.
Successful passwordless SSH login.
Creation of the ds1202-project directory structure.
Executable sysinfo.sh and successful execution.
The feature-logging branch and enhanced script.
The Git commit history.
Successful merge of feature-logging into main.
The GitHub remote and successful push.
The public GitHub repository containing the completed project.
