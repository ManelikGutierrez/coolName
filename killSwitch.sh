#!/bin/bash

# Get the current user
CURRENT_USER=$(whoami)

# Get a list of logged-in users excluding the current user
LOGGED_IN_USERS=$(who | awk '{print $1}' | sort | uniq)

for USER in $LOGGED_IN_USERS; do
    if [ "$USER" != "$CURRENT_USER" ]; then
        echo "Kicking off user: $USER"
        pkill -u "$USER"  # Kill all processes for the user
    fi
done

echo "All users except $CURRENT_USER have been logged off."
