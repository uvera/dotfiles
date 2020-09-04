starship init fish | source

fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'jethrokuan/z'
fundle plugin 'jethrokuan/fzf'

fundle init

contains $HOME/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/bin
contains $HOME/.cargo/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/.cargo/bin

# CTRL+Backspace
bind \cH backward-kill-path-component
# CTRL+Delete
bind \e\[3\;5~ kill-word