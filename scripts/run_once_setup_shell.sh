#!/bin/bash

if ! command -v zsh >/dev/null; then
    echo "Error: zsh is not installed. Skipping shell change."
    exit 1
fi

ZSH_PATH=$(command -v zsh)
CURRENT_SHELL="$SHELL"

if [ "$CURRENT_SHELL" != "$ZSH_PATH" ]; then
    echo "Changing default shell to zsh..."
    chsh -s "$ZSH_PATH"
else
    echo "Zsh is already your default shell."
fi

