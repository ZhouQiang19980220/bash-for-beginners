#!/bin/bash

# Function to prompt for username
get_username() {
    read -p "Enter your username: " username
    if [ "$username" = "q" ]; then
        echo "Quit"
        exit 1
    fi

    # Check if the username already exists
    if id "$username" &>/dev/null; then
        echo "User $username already exists. Please choose a different username."
        exit 1
    fi
}

# Function to prompt for password and confirm
get_password() {
    while true; do
        read -s -p "Enter your password: " password1
        echo
        read -s -p "Enter your password again: " password2
        echo

        if [ "$password1" != "$password2" ]; then
            echo "Passwords do not match. Please try again."
        else
            break
        fi
    done
}

# Function to create user and set password
create_user() {
    sudo useradd -m "$username"
    if [ $? -eq 0 ]; then
        echo "$username:$password1" | sudo chpasswd
        if [ $? -eq 0 ]; then
            echo "Hello, $username! Account created successfully!"
        else
            echo "Failed to set password for $username."
            sudo userdel -r "$username"
            exit 1
        fi
    else
        echo "Failed to create user $username."
        exit 1
    fi
}

# Function to prompt for user deletion
prompt_delete_user() {
    while true; do
        read -p "Would you like to delete the user created just now? (y/n): " flag
        if [[ "$flag" == "y" || "$flag" == "Y" ]]; then
            sudo userdel -rf "$username"
            echo "Deleted $username!"
            break
        elif [[ "$flag" == "n" || "$flag" == "N" ]]; then
            echo "User $username will not be deleted."
            break
        else
            echo "Invalid input. Please enter 'y' or 'n'."
        fi
    done
}

# Ensure the script is run as root or using sudo
# if [ "$(id -u)" -ne 0 ]; then
#     echo "This script must be run as root or using sudo."
#     exit 1
# fi

# Main script logic
get_username
get_password
create_user
prompt_delete_user