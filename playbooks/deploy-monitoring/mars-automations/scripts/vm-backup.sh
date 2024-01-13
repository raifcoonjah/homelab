#!/bin/bash

# Function to send messages to Discord
send_discord_message() {
    local message=$1
    curl -H "Content-Type: application/json" -X POST -d '{"content":"'"$message"'"}' $DISCORD_WEBHOOK_URL
}

# Proxmox VM ID to be backed up
VM_ID=11900

# Discord webhook URL for sending progress updates
DISCORD_WEBHOOK_URL="https://discord.com/api/webhooks/1195407498639851690/0le_B794tXRp0Bg-HROQVULyfi06-ZSmvjmjDU8CJqpboseZpRElS-jWYxCSc55i9Ud4"

# Get the current date for the backup folder
BACKUP_DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FOLDER="/home/vmbackup/$BACKUP_DATE"

echo "removing previous backup"
rm -rf /home/vmbackup/*

# Create the backup folder
mkdir -p $BACKUP_FOLDER

# Record the start time of the backup
START_TIME=$(date +"%Y-%m-%d %H:%M:%S")
send_discord_message "Backup Started at $START_TIME"

# Perform vzdump on the specified VM ID
vzdump $VM_ID --dumpdir $BACKUP_FOLDER &

# Capture the PID of the vzdump process
VZDUMP_PID=$!

# Monitor vzdump progress
while kill -0 $VZDUMP_PID 2>/dev/null; do
    sleep 60  # Adjust the interval as needed
done

# Record the end time of the backup
END_TIME=$(date +"%Y-%m-%d %H:%M:%S")

# Send a final completion message to Discord
send_discord_message "Backup Completed at $END_TIME. Files moved to $BACKUP_FOLDER."
