starship init fish | source

fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'jethrokuan/z'
fundle plugin 'patrickf3139/fzf.fish'
fundle plugin 'uvera/deldog.fish'
fundle plugin 'uvera/bitwarden-quick.fish'
fundle plugin 'uvera/imgur.fish'
fundle plugin 'nickeb96/puffer-fish'

fundle init

contains $HOME/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/bin
contains $HOME/.cargo/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/.cargo/bin
contains $HOME/go/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/go/bin

source $__fish_config_dir/functions/gitcmds.fish

# CTRL+Backspace
bind \cH backward-kill-path-component
# CTRL+Delete
bind \e\[3\;5~ kill-word

set -Ux EDITOR nvim
set -Ux VISUAL nvim

set --export FZF_DEFAULT_OPTS --height 65% --margin 1

bind -M insert \e\cn '__ranger'
bind \e\cn '__ranger'

fish_vi_key_bindings insert
set fish_cursor_default block
set fish_cursor_insert underscore
set fish_cursor_replace_one underscore
set fish_cursor_visual block
