# ZSH Init
export ZSH="$HOME/.oh-my-zsh"

HIST_STAMPS="dd.mm.yyyy"

plugins=(adb git gitfast python zsh-z)

source $ZSH/oh-my-zsh.sh

# Path setup
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export VISUAL=micro
export EDITOR=micro
export LANG=en_US.UTF-8

# RESH
[ -f ~/.resh/shellrc ] && source ~/.resh/shellrc

# Custom aliasing
[ -f ~/.aliases/init.sh ] && source ~/.aliases/init.sh

# SSH Agent
if [[ "$(where ssh-agent)" != *"not"* ]]; then

    if ! pgrep -u "$USER" ssh-agent > /dev/null; then
        ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
    fi
    if [[ ! "$SSH_AUTH_SOCK" ]]; then
        { eval "$(<"$XDG_RUNTIME_DIR/ssh-agent.env")" } &>/dev/null
    fi

fi

# NVM init
source /usr/share/nvm/init-nvm.sh

# Starship init
eval "$(starship init zsh)"

