
#!/bin/bash

# Set your commit message
COMMIT_MESSAGE="Auto Commit"

# Navigate to your project directory
cd /home/xofi/UnrealImGui

# Generate 5 random characters from 'a' to 'z'
RANDOM_CHARS=$(LC_CTYPE=C tr -dc 'a-z' < /dev/urandom | head -c 5)

# Replace the content of the "test.txt" file with the 5 random characters
echo "$RANDOM_CHARS" > test.txt

# Add all changes to the staging area
git add .

# Commit the changes with the specified message
git commit -m "$COMMIT_MESSAGE"

# Push the changes to GitHub
git push origin master
