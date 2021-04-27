starship init fish | source

fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'jethrokuan/z'
fundle plugin 'patrickf3139/fzf.fish'
fundle plugin 'uvera/deldog.fish'
fundle plugin 'uvera/bitwarden-quick.fish'
fundle plugin 'uvera/insulter.fish'
fundle plugin 'nickeb96/puffer-fish'
fundle plugin 'franciscolourenco/done'

fundle init

contains $HOME/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/bin
contains $HOME/.cargo/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/.cargo/bin
contains $HOME/go/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/go/bin
contains $HOME/.local/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/.local/bin

# CTRL+Backspace
bind -M insert \cH backward-kill-path-component
# CTRL+Delete
bind -M insert \e\[3\;5~ kill-word

set -Ux EDITOR nvim
set -Ux VISUAL nvim

set --export FZF_DEFAULT_OPTS --height 65% --margin 1

bind -M insert \e\cn '__ranger'
bind \e\cn '__ranger'

bind -M insert \cn '__ranger_auto_cd'
bind \cn '__ranger_auto_cd'

fish_vi_key_bindings insert
set fish_cursor_default underscore
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

bind dh backward-delete-char
bind dl delete-char

bind " w" execute
bind " q" __fish_cancel_commandline

bind -M insert \es __fish_prepend_doas
bind \es __fish_prepend_doas

bind \e\co 'refresh'

alias fish_command_not_found=__fish_default_command_not_found_handler
