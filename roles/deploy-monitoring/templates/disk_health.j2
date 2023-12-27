#!/bin/bash

# Array of disk device names
# Add more using ""
DISKS=($(lsblk -o NAME,TYPE -n -p | awk '$2 == "disk" {print $1}'))
HOSTNAME=$(hostname)

#Discord webhook
DISCORD_WEBHOOK_URL="https://discord.com/api/webhooks/1144896741964009577/SqqDbrKbs4brjBhgRyoECUcgENypF_x41x82lQ_K9Bq4Xqj4EG5UWNQZYFoTRt-5s4K6"

# Date
CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

for DISK in "${DISKS[@]}"; do
  # Perform a test and get the overall health status
  HEALTH_STATUS=$(sudo smartctl -H $DISK | awk '/^SMART overall-health self-assessment test result:/{print $NF}')

  if [ -z "$HEALTH_STATUS" ]; then
    MESSAGE="[$CURRENT_DATE] Error retrieving disk health information for $DISK."
    echo "$MESSAGE"
    
    # Send the message to Discord webhook
    curl -H "Content-Type: application/json" -X POST -d '{"content": "'"$MESSAGE"'"}' "$DISCORD_WEBHOOK_URL"
    continue
  fi

  if [ "$HEALTH_STATUS" != "PASSED" ]; then
    MESSAGE="[$CURRENT_DATE] Disk health issue detected for $DISK. Health status: $HEALTH_STATUS. Consider investigating the disk's health."
  else
    MESSAGE="($HOSTNAME) [$CURRENT_DATE] Disk health is good for $DISK. Health status: $HEALTH_STATUS"
  fi

  echo "$MESSAGE"
  
  # Send the message to Discord webhook
  curl -H "Content-Type: application/json" -X POST -d '{"content": "'"$MESSAGE"'"}' "$DISCORD_WEBHOOK_URL"
done
