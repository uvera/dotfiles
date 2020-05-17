#neofetch

source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/sqlite-history.zsh
autoload -Uz add-zsh-hook
add-zsh-hook precmd histdb-update-outcome

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/dusan/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k

HIST_STAMPS="dd.mm.yyyy"

plugins=(adb git gitfast python zsh-z)

source $ZSH/oh-my-zsh.sh
source "${HOME}/.aliases/init.sh"

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export EDITOR=micro
export LANG=en_US.UTF-8

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.resh/shellrc ] && source ~/.resh/shellrc

[ -f ~/.aliases/init.sh ] && source ~/.aliases/init.sh

eval $(thefuck --alias)

snap list > /dev/null 2>&1
resh-daemon > /dev/null 2>&1
