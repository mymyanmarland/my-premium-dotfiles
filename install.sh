#!/bin/bash

echo "🚀 Starting dotfiles installation..."

# Create symlinks
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.aliases ~/.aliases
mkdir -p ~/.config
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml

echo "✨ Dotfiles linked successfully!"

# Check for Starship
if ! command -v starship &> /dev/null; then
    echo "📦 Installing Starship prompt for that premium look..."
    curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

echo "✅ All set! Restart your terminal or run 'source ~/.zshrc'"
