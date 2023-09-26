#!/bin/bash

# Set the threshold for load average
threshold=2.0

# Discord webhook URL
webhook_url="$secrets"

# Get the 1-minute load average
load_avg_1min=$(uptime | awk -F 'load average: ' '{print $2}' | awk -F, '{print $1}')

# Compare load average with threshold
if (( $(echo "$load_avg_1min > $threshold" | bc -l) )); then
    message="WARNING: For 1-minute load average is $load_avg_1min which is higher than the threshold of $threshold."

    # Send notification to Discord webhook
    curl -X POST -H "Content-Type: application/json" -d '{"content": "'"$message"'"}' "$webhook_url"
fi

