function abort
    switch $argv
        case c
            command git cherry-pick --abort
        case r
            command git revert --abort
        case m
            command git merge --abort
        case a
            command git am --abort
        case '--help' or '-h'
            echo 'abort [OPTION]'
            echo 'c -- abort cherry-pick'
            echo 'r -- abort revert'
            echo 'm -- abort merge'
            echo 'a -- abort am'
        case '*'
            echo "Abort $argv? What?"
    end
end

function chout
    command git checkout $argv[1] -- $argv[2]
end

function cs_git
    command git config user.email "dusan.uveric9@gmail.com"
    command git config user.name "Dušan Uverić"
end