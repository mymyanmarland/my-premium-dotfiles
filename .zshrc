# Export PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# History configuration
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Basic oh-my-zsh like features without the bloat
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Key bindings
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Load Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Set up Starship Prompt (The cool looking part)
if command -v starship >/dev/null; then
    eval "$(starship init zsh)"
fi

# Syntax highlighting (if installed)
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
