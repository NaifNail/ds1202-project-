
#!/usr/bin/env bash

# DS1202 Project: Enhanced System Information Report

set -u

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"
LOG_DIR="$PROJECT_DIR/logs"
LOG_FILE="$LOG_DIR/sysinfo.log"

mkdir -p "$LOG_DIR"

# Print the report and save a copy in the log file.
{
    echo "======================================"
    echo "       SYSTEM INFORMATION REPORT"
    echo "======================================"
    echo "Timestamp: $(date '+%Y-%m-%d %H:%M:%S %Z')"

    echo
    echo "Hostname:"
    hostname

    echo
    echo "Operating System:"
    if [ -r /etc/os-release ]; then
        . /etc/os-release
        echo "${PRETTY_NAME:-Unknown Linux distribution}"
    else
        uname -s
    fi

    echo
    echo "Kernel:"
    uname -r

    echo
    echo "CPU Load Averages:"
    uptime

    echo
    echo "Memory Usage:"
    free -h

    echo
    echo "Disk Usage:"
    df -h

    echo
    echo "Report completed."
    echo "======================================"
    echo
} | tee -a "$LOG_FILE"

status=${PIPESTATUS[0]}

if [ "$status" -ne 0 ]; then
    echo "Error: report generation failed." >&2
    exit "$status"
fi
