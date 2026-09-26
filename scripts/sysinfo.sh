#!/bin/bash

LOGFILE="$HOME/ds1202-project/logs/sysinfo.log"

{
echo "========================================"
echo "       SYSTEM INFORMATION REPORT"
echo "========================================"

echo
echo "Hostname:"
hostname

echo
echo "OS / Kernel:"
uname -a

echo
echo "CPU Load:"
uptime

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h

echo
echo "Report generated on:"
date

echo "========================================"
} | tee "$LOGFILE"
