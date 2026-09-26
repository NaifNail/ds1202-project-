#!/bin/bash

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
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h

echo
echo "========================================"
