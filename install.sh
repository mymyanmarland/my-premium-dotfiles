#!/bin/bash

# Get the directory where this script is located
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "🚀 Starting Ultra-Premium Terminal Setup for Stuxnet..."

# 1. Create symlinks
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/.aliases" ~/.aliases
mkdir -p ~/.config
ln -sf "$DOTFILES_DIR/starship.toml" ~/.config/starship.toml

# 2. Setup Zsh Plugins Directory
ZSH_PLUGINS_DIR="$HOME/.zsh-plugins"
mkdir -p "$ZSH_PLUGINS_DIR"

echo "🎨 Installing Zsh Visual Enhancements..."

# Syntax Highlighting
if [ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting"
fi

# Auto Suggestions
if [ ! -d "$ZSH_PLUGINS_DIR/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_PLUGINS_DIR/zsh-autosuggestions"
fi

# 3. System Tools Check & Install
if ! command -v zsh &> /dev/null; then
    sudo apt-get update && sudo apt-get install -y zsh
fi

if ! command -v starship &> /dev/null; then
    curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

# 4. AI Tools Installation
echo "🤖 Installing AI Engineering tools..."

# OpenClaw
command -v openclaw &> /dev/null || npm install -g openclaw

# Claude Code
command -v claude &> /dev/null || npm install -g @anthropic-ai/claude-code

# Aider
command -v aider &> /dev/null || pip install aider-chat

# Copilot
if ! gh extension list | grep -q "copilot"; then
    gh extension install github/gh-copilot
fi

echo ""
echo "🎉 ALL DONE! Your terminal is now BEAUTIFUL and POWERFUL."
echo "👉 Type 'zsh' to see the magic!"
