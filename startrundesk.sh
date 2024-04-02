#!/bin/bash

# Restart rustdesk-hbbr service
sudo systemctl restart rustdesk-hbbr

# Check if the restart was successful
if [ $? -eq 0 ]; then
    echo "rustdesk-hbbr service restarted successfully."
else
    echo "Failed to restart rustdesk-hbbr service."
    exit 1
fi

# Print the local IP address
echo "Local IP Address(es):"
hostname -I


read -p "Press any key to exit..." -n1 -s
echo    # Move to a new line
