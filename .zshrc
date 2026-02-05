# --- Zsh Configuration for Stuxnet ---

# 1. Essential System Paths (Ensure basic commands work)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH"

# 2. Codespaces & Tool Specific Paths
export PATH="$HOME/bin:/home/codespace/.local/bin:/home/codespace/nvm/current/bin:$PATH"

# 3. Load Environment Managers
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

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
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

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
bindkey "^[[A" up-line-or-search # Up arrow for history search
bindkey "^[[B" down-line-or-search # Down arrow for history search

# Success message
echo "✨ Ko Paing's Premium Dev Environment Loaded!"
