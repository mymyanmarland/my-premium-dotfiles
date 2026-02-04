#!/bin/bash

echo "🚀 Starting Full-Stack & AI Developer Environment Setup..."

# Create symlinks
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.aliases ~/.aliases
mkdir -p ~/.config
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml

echo "✨ Config files linked."

# Check and Install Starship
if ! command -v starship &> /dev/null; then
    echo "📦 Installing Starship prompt..."
    curl -sS https://starship.rs/install.sh | sh -s -- -y
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

echo "✅ All set! Run 'source ~/.zshrc' to activate your new workspace."
