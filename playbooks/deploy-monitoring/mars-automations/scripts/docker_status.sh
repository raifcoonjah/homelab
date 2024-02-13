#!/bin/bash

# Check if Docker is running
docker_status=$(systemctl is-active docker)
HOSTNAME=$(hostname)

if [ "$docker_status" != "active" ]; then
    # Replace with your notification method (Discord webhook, email, etc.)
    webhook_url="https://discord.com/api/webhooks/1146834588069531658/jscMLsiJd8GimNiD5rftIO30Y4UJ7VkXsrSbmkLej1ktm7FENT2AQRGy9i7XrzaDfYuq"
    message="($HOSTNAME) Warning, docker is not running on: $(hostname)."

    # Send notification
    curl -X POST -H "Content-Type: application/json" -d '{"content": "'"$message"'"}' "$webhook_url"
fi

