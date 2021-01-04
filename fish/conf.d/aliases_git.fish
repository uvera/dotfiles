alias logg='git log --pretty=short'
alias cond='git cherry-pick --continue'
alias rsg='git reset'
alias pick='git cherry-pick -s'
alias skip='git cherry-pick --skip'

alias g='git'

alias ga='git add'
alias gaa='git add --all'

alias gap='git apply'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'

alias gbs='git bisect'

alias gc='git commit -v'
alias gcs='git commit -v -s'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcs!='git commit -s --no-edit --amend'
alias gcan!='git commit -v -a --no-edit --amend'
alias gcans!='git commit -v -a -s --no-edit --amend'
alias gcam='git commit -a -m'
alias gcsm='git commit -s -m'
alias gcb='git checkout -b'
alias gco='git checkout' 
alias gcf='git config --list'
alias gcl='git clone --recurse-submodules'
alias gclean='git clean -id'

alias gsb='git status -sb'
alias gsh='git show'
alias gsi='git submodule init'
alias gsps='git show --pretty=short --show-signature'
alias gss='git status -s'
alias gst='git status'

alias gup='git pull --rebase'
alias gupa='git pull --rebase --autostash'

alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpf!='git push --force'

alias gdc='git diff --cached'
alias gdh='git diff HEAD'
