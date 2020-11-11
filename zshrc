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

# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(type -w __init_nvm)" = function ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi

# compinstall
zstyle :compinstall filename '/home/dusan/.zshrc'

autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

# ~/.zsh_plugins
source ~/.zsh_plugins.sh

# Starship prompt
eval "$(starship init zsh)"
[[ $- == *i* ]] && instantterminalhelp
