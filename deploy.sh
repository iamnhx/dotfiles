#!/bin/bash

# Check if chezmoi is installed
if [[ $(command -v chezmoi) ]]; then
    echo "Upgrading chezmoi..."
    # Upgrade chezmoi to the latest version
    chezmoi upgrade
else
    echo "Installing chezmoi..."
    # Install chezmoi if it's not already installed
    curl -fsSL https://git.io/chezmoi | sudo sh -s -- -b /usr/local/bin
fi

# Initialize chezmoi
chezmoi init iamnhx

# Apply configurations using chezmoi
chezmoi apply
