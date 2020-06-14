# Ignore compinit warnings
ZSH_DISABLE_COMPFIX="true"

# Allow antigen to change the prompt
setopt prompt_subst

# Antigen
source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle brew
antigen bundle brew-cask
antigen bundle command-not-found
antigen bundle git
antigen bundle zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster
antigen apply

# Exports
export DEFAULT_USER=qg12lc
export LC_ALL=en_US.UTF-8
export SSH_AUTH_SOCK="/usr/local/var/run/yubikey-agent.sock"
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Proxy settings, will NOT do something special for HTTPS, just assume it's the same
export ALL_PROXY=`scutil --proxy | awk '\
/HTTPEnable/ { enabled = $3; } \
/HTTPProxy/ { server = $3; } \
/HTTPPort/ { port = $3; } \
END { if (enabled == "1") { print "http://" server ":" port; } }'`

export HTTP_PROXY=$ALL_PROXY
export HTTPS_PROXY=$ALL_PROXY

## Aliases
alias ll='ls -AFgh'

# Completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# Always start tmux
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
