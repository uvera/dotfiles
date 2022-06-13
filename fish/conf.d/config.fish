starship init fish | source
status --is-interactive; and rbenv init - fish | source

fundle plugin 'patrickf1/colored_man_pages.fish'
fundle plugin 'patrickf3139/fzf.fish'
fundle plugin 'uvera/bitwarden-quick.fish'
fundle plugin 'uvera/insulter.fish'
fundle plugin 'nickeb96/puffer-fish'
fundle plugin 'franciscolourenco/done'
fundle plugin 'veirt/web-search.fish'
fundle plugin 'FabioAntunes/base16-fish-shell'
fundle plugin 'joshmedeski/fish-lf-icons'

fundle init

fish_add_path -m $HOME/.rbenv/shims
fish_add_path $HOME/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.emacs.d/bin
fish_add_path $HOME/.deno/bin
fish_add_path $HOME/.local/share/gem/ruby/3.0.0/bin

zoxide init fish | source

# CTRL+Backspace
bind -M insert \cH backward-kill-path-component
# CTRL+Delete
bind -M insert \e\[3\;5~ kill-word

set -Ux EDITOR nvim
set -Ux VISUAL nvim

# set some sensible default options to always pass into invocations of less
set -x LESS "--ignore-case --LONG-PROMPT --RAW-CONTROL-CHARS --tabs=4 --window=-4"
# don't store any history of commands executed in less
set -x LESSHISTFILE /dev/null

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

# prevent iterm2 from closing when typing Ctrl-D (EOF)
bind \cd delete-char
bind -M insert \cd delete-char

alias fish_command_not_found=__fish_default_command_not_found_handler
