# Export PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Language Environment Managers (Load if exists)
[ -s "$HOME/.nvm/nvm.sh" ] && \. "$HOME/.nvm/nvm.sh"  # Load nvm
[ -d "$HOME/.pyenv" ] && export PATH="$HOME/.pyenv/bin:$PATH" && eval "$(pyenv init -)"

# History configuration
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Completion and UI
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Load Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Set up Starship Prompt
if command -v starship >/dev/null; then
    eval "$(starship init zsh)"
fi

# Success message for Ko Kyaw Myo Naing
echo "✨ Developer Environment Loaded (Python, Web, AI CLI Ready!)"
