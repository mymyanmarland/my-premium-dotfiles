# --- Zsh Configuration for Stuxnet (Premium Edition) ---

# 1. Essential System & Tool Paths
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH"
export PATH="$HOME/bin:/home/codespace/.local/bin:/home/codespace/nvm/current/bin:$PATH"

# 2. Node.js & NVM Setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH="$(npm config get prefix)/bin:$PATH"

# 3. Zsh Plugins (Syntax Highlighting & Suggestions)
ZSH_PLUGINS_DIR="$HOME/.zsh-plugins"
[ -f "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[ -f "$ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source "$ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"

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
[ -f ~/.aliases ] && source ~/.aliases

# 7. Set up Starship Prompt
if command -v starship >/dev/null; then
    eval "$(starship init zsh)"
fi

# 8. Welcome Banner
echo "\033[1;36m"
echo "  ⚡ Welcome, Stuxnet! ⚡"
echo "  -----------------------"
echo "  Mode: AI-Powered Master"
echo "  Ready to build greatness."
echo "\033[0m"
