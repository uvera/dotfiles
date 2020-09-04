starship init fish | source

fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'jethrokuan/z'

fundle init

# CTRL+Backspace
bind \cH backward-kill-path-component
# CTRL+Delete
bind \e\[3\;5~ kill-word