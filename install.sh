#!/bin/bash

# Get the directory where this script is located
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "🚀 Starting Ultimate Full-Stack & AI Developer Setup..."
echo "📂 Configuration folder: $DOTFILES_DIR"

# 1. Create symlinks for configurations
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/.aliases" ~/.aliases
mkdir -p ~/.config
ln -sf "$DOTFILES_DIR/starship.toml" ~/.config/starship.toml

echo "✨ Config files linked successfully."

# 2. System Tools Check & Install (Zsh)
if ! command -v zsh &> /dev/null; then
    echo "🐚 Zsh is missing. Installing Zsh..."
    if command -v apt-get &> /dev/null; then
        sudo apt-get update && sudo apt-get install -y zsh
    fi
fi

# 3. UI Enhancement (Starship)
if ! command -v starship &> /dev/null; then
    echo "📦 Installing Starship prompt..."
    curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

# 4. AI Tools Installation (The Core Tools)
echo "🤖 Installing/Updating AI Engineering tools..."

# Claude Code (Anthropic)
if ! command -v claude &> /dev/null; then
    echo "🔌 Installing Claude Code..."
    npm install -g @anthropic-ai/claude-code
else
    echo "✅ Claude Code already installed."
fi

# Aider (AI Pair Programmer)
if ! command -v aider &> /dev/null; then
    echo "🔌 Installing Aider AI..."
    pip install aider-chat
else
    echo "✅ Aider AI already installed."
fi

# GitHub Copilot CLI extension
if ! gh extension list | grep -q "copilot"; then
    echo "🔌 Installing GitHub Copilot CLI extension..."
    gh extension install github/gh-copilot
else
    echo "✅ GitHub Copilot CLI already installed."
fi

# 5. Finalize Setup
echo ""
echo "🎉 ALL DONE! Your environment is now fully powered by AI tools."
echo "👉 Action required: Type 'zsh' to switch to your new shell."
echo "👉 Then you can use commands like 'cl' (Claude) or 'gs' (Git Status) immediately."
