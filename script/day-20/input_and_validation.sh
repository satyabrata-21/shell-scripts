#!/bin/bash

# Exit immediately if any command fails
set -e

# =========================================
# 1️⃣ Check if argument is provided
# =========================================

if [ $# -ne 1 ]; then
    echo "Usage: $0 <log_file_path>"
    exit 1
fi

# =========================================
# 2️⃣ Assign argument to variable
# =========================================

LOG_FILE="$1"

# =========================================
# 3️⃣ Check if file exists
# =========================================

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File '$LOG_FILE' does not exist."
    exit 1
fi

echo "Input validation successful."
echo "Analyzing log file: $LOG_FILE"
