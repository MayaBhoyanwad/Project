#!/bin/bash
valid_username="abc"
valid_password="123"

# Prompt user for input
read -p "Username: " input_username
read -s -p "Password: " input_password
echo

# Check if provided credentials are valid
if [ "$input_username" == "$valid_username" ] && [ "$input_password" == "$valid_password" ];
then
    echo "Login successful"
else
    echo "Invalid credentials."
fi
