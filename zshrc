setxkbmap -option caps:escape

source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/sqlite-history.zsh
autoload -Uz add-zsh-hook
add-zsh-hook precmd histdb-update-outcome

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/dusan/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k

HIST_STAMPS="dd.mm.yyyy"

plugins=(adb git gitfast python zsh-z)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export EDITOR=micro
export LANG=en_US.UTF-8

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.resh/shellrc ] && source ~/.resh/shellrc

[ -f ~/.aliases/init.sh ] && source ~/.aliases/init.sh

eval $(thefuck --alias)
