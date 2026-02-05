# --- Zsh Configuration for Stuxnet ---

# 1. Essential System Paths
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH"

# 2. Node.js & NVM Setup (Crucial for Claude Code)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Add global npm bin to path just in case NVM logic misses it
export PATH="$(npm config get prefix)/bin:$PATH"

# 3. Codespaces & Tool Specific Paths
export PATH="$HOME/bin:/home/codespace/.local/bin:$PATH"

# 4. History Configuration
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# 5. Completion & UI
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 6. Load Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# 7. Set up Starship Prompt
if command -v starship >/dev/null; then
    eval "$(starship init zsh)"
else
    PROMPT='%n@%m %~ %# '
fi

# 8. Key Bindings
bindkey "^[[A" up-line-or-search
bindkey "^[[B" down-line-or-search

echo "✨ Ko Paing's Premium Dev Environment Loaded!"
