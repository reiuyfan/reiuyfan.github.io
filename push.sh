#!/bin/sh

# If a command fails then the deploy stops
set -e

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push and build repos.
git push origin main