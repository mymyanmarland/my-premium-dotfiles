# --- Zsh Configuration for Stuxnet ---

# Load system defaults if they exist
[ -f /etc/zsh/zshrc ] && source /etc/zsh/zshrc

# Export standard PATHs for Codespaces
export PATH=$HOME/bin:/usr/local/bin:/home/codespace/.local/bin:/home/codespace/nvm/current/bin:$PATH

# Language Environment Managers (Load NVM for Node/Claude)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# History configuration
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# Completion and UI
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Load Aliases
[ -f ~/.aliases ] && source ~/.aliases

# Set up Starship Prompt
if command -v starship >/dev/null; then
    eval "$(starship init zsh)"
else
    PROMPT='%n@%m %~ %# '
fi

# Success message
echo "✨ Ko Paing's Premium Dev Environment Loaded!"
