alias ls="__ls"
alias rm="rm -I"
alias t="trash"
abbr -a -g l 'ls -l'
abbr -a -g ll 'ls -lh'
abbr -a -g la 'ls -a'
abbr -a -g lla 'ls -la'
abbr -a -g lt 'ls --tree'

abbr -a -g ydl 'youtube-dl -x --embed-thumbnail --add-metadata --audio-format mp3 -o "%(title)s.%(ext)s"'

abbr -a -g mb_bios systemctl reboot --firmware-setup

alias icat="kitty +kitten icat"
alias d="kitty +kitten diff"

alias yayy="PKGEXT=.pkg.tar yay"
abbr -a -g pka pikaur
abbr -a -g zx zoxide
