# --- Zsh Configuration for Stuxnet ---

# Export PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Language Environment Managers (Load if exists)
[ -s "$HOME/.nvm/nvm.sh" ] && \. "$HOME/.nvm/nvm.sh"  # Load nvm
[ -d "$HOME/.pyenv" ] && export PATH="$HOME/.pyenv/bin:$PATH" && eval "$(pyenv init -)"

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
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Load Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Set up Starship Prompt
if command -v starship >/dev/null; then
    eval "$(starship init zsh)"
else
    PROMPT='%n@%m %~ %# '
fi

# Key Bindings
bindkey "^[[A" up-line-or-search # Up arrow for history search
bindkey "^[[B" down-line-or-search # Down arrow for history search

# Success message
echo "✨ Ko Paing's Premium Dev Environment Loaded!"
