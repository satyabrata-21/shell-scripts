#!/bin/bash

LOG_FILE="/var/log/maintenance.log"

# Function to log messages with timestamp
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE"
}

# Function to run log rotation
rotate_logs() {
    log "Starting log rotation..."
    sudo bash ./log_rotate.sh /var/log/myapp 2>&1 | tee -a "$LOG_FILE"
    log "Log rotation completed."
}

# Function to run backup
run_backup() {
    log "Starting backup..."
    sudo bash ./backup.sh data/ backups/ 2>&1 | tee -a "$LOG_FILE"
    log "Backup completed."
}

# Call the functions
rotate_logs
run_backup

log "Maintenance finished successfully."
