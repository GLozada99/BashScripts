#!/bin/bash
# Fix the apt update errors in Ubuntu / Linux Mint
# Demonstrated for fun by guys at ihaveapc.com

echo "This will fix the mergelist errors"
sudo rm /var/lib/apt/lists/* -vf
sudo apt-get update
