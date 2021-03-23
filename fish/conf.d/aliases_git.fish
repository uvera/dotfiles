abbr -a -g logg git log --pretty=short
abbr -a -g cond git cherry-pick --continue
abbr -a -g rsg git reset
abbr -a -g pick git cherry-pick -s
abbr -a -g skip git cherry-pick --skip

abbr -a -g g git

abbr -a -g ga git add
abbr -a -g gaa git add --all

abbr -a -g gap git apply

abbr -a -g gb git branch
abbr -a -g gba git branch -a
abbr -a -g gbd git branch -d

abbr -a -g gbs git bisect

abbr -a -g gc git commit -v
abbr -a -g gcs git commit -v -s
abbr -a -g gc! git commit -v --amend
abbr -a -g gcn! git commit -v --no-edit --amend
abbr -a -g gca git commit -v -a
abbr -a -g gca! git commit -v -a --amend
abbr -a -g gcs! git commit -s --no-edit --amend
abbr -a -g gcan! git commit -v -a --no-edit --amend
abbr -a -g gcans! git commit -v -a -s --no-edit --amend
abbr -a -g gcam git commit -a -m
abbr -a -g gcsm git commit -s -m
abbr -a -g gcb git checkout -b
abbr -a -g gco git checkout 
abbr -a -g gcf git config --list
abbr -a -g gcl git clone --recurse-submodules
abbr -a -g gclean git clean -id

abbr -a -g gsb git status -sb
abbr -a -g gsh git show
abbr -a -g gsi git submodule init
abbr -a -g gsps git show --pretty short --show-signature
abbr -a -g gss git status -s
abbr -a -g gst git status

abbr -a -g gup git pull --rebase
abbr -a -g gupa git pull --rebase --autostash

abbr -a -g gp git push
abbr -a -g gpf git push --force-with-lease
abbr -a -g gpf! git push --force

abbr -a -g gd git diff
abbr -a -g gdc git diff --cached
abbr -a -g gdh git diff HEAD

alias gia='__git_abort'
alias gcho='__git_checkout'
