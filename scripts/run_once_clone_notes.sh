#!/bin/bash

# Define the target directory
TARGET_DIR="$HOME/git/obsidian"
REPO_URL="git@github.com:marezii/obsidian_vault.git"

mkdir -p "$HOME/git"

if [ ! -d "$TARGET_DIR" ]; then
	echo "Cloning Obsidian repository..."
	git clone "$REPO_URL" "$TARGET_DIR"
else
	echo "Notes repository already exists. Skipping clone."
fi

