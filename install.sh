#!/bin/bash

# Get the directory where this script is located
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "🚀 Starting Full-Stack & AI Developer Environment Setup..."
echo "📂 Dotfiles directory: $DOTFILES_DIR"

# Create symlinks using the dynamic path
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/.aliases" ~/.aliases
mkdir -p ~/.config
ln -sf "$DOTFILES_DIR/starship.toml" ~/.config/starship.toml

echo "✨ Config files linked."

# Check if Zsh is installed
if ! command -v zsh &> /dev/null; then
    echo "🐚 Zsh is missing. Installing Zsh..."
    if command -v apt-get &> /dev/null; then
        sudo apt-get update && sudo apt-get install -y zsh
    fi
fi

# Check and Install Starship
if ! command -v starship &> /dev/null; then
    echo "📦 Installing Starship prompt..."
    curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

# AI Tools Check
echo "🤖 Checking for AI Engineering tools..."

# Check for Claude Code
if ! command -v claude &> /dev/null; then
    echo "💡 Note: Claude Code is not installed. You can install it with: npm install -g @anthropic-ai/claude-code"
else
    echo "✅ Claude Code detected: $(claude --version)"
fi

# Check for Aider
if ! command -v aider &> /dev/null; then
    echo "💡 Note: Aider is not installed. You can install it with: pip install aider-chat"
else
    echo "✅ Aider detected."
fi

# Check for GitHub Copilot CLI
if ! gh extension list | grep -q "copilot"; then
    echo "💡 Note: GitHub Copilot extension for gh is missing. Install with: gh extension install github/gh-copilot"
else
    echo "✅ GitHub Copilot CLI extension detected."
fi

# Check for Python
if command -v python3 &> /dev/null; then
    echo "🐍 Python3 detected."
else
    echo "⚠️ Python3 missing. Please install it for Python development."
fi

# Check for Node.js
if command -v node &> /dev/null; then
    echo "⬢ Node.js detected: $(node -v)"
else
    echo "⚠️ Node.js missing. Recommend installing NVM for Web Dev."
fi

# Check for GitHub CLI
if command -v gh &> /dev/null; then
    echo "🐙 GitHub CLI detected."
else
    echo "⚠️ GitHub CLI missing. Install it to manage AI projects easily."
fi

echo ""
echo "✅ All set!"
echo "👉 IMPORTANT: Your current shell is $SHELL."
echo "👉 To use these dotfiles, switch to Zsh by running: 'zsh'"
echo "👉 Then run 'source ~/.zshrc' to activate your new environment."
