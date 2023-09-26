#!/bin/bash

# Check if Docker is running
docker_status=$(systemctl is-active docker)

if [ "$docker_status" != "active" ]; then
    # Replace with your notification method (Discord webhook, email, etc.)
    webhook_url="$secret"
    message="Warning, docker is not running on: $(hostname)."

    # Send notification
    curl -X POST -H "Content-Type: application/json" -d '{"content": "'"$message"'"}' "$webhook_url"
fi

