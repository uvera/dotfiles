alias ls='__ls'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

abbr -a -g ydl youtube-dl -x --embed-thumbnail --add-metadata --audio-format mp3 -o "%(title)s.%(ext)s"

abbr -a -g mb_bios systemctl reboot --firmware-setup

alias icat="kitty +kitten icat"
alias d="kitty +kitten diff"

alias yayy="PKGEXT=.pkg.tar yay"
abbr -a -g pka pikaur
