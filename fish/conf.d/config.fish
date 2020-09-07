starship init fish | source

fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'jethrokuan/z'
fundle plugin 'patrickf3139/fzf.fish'
fundle plugin 'uvera/deldog.fish'
fundle plugin 'uvera/bitwarden-quick.fish'

fundle init

contains $HOME/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/bin
contains $HOME/.cargo/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/.cargo/bin

source $HOME/.config/fish/functions/gitcmds.fish

# CTRL+Backspace
bind \cH backward-kill-path-component
# CTRL+Delete
bind \e\[3\;5~ kill-word