function __git_abort
    switch $argv
        case c
            command git cherry-pick --abort
        case r
            command git revert --abort
        case m
            command git merge --abort
        case a
            command git am --abort
	case b
	    command git rebase --abort
        case '--help' or '-h'
            echo 'abort [OPTION]'
            echo 'c -- abort cherry-pick'
            echo 'r -- abort revert'
            echo 'm -- abort merge'
            echo 'a -- abort am'
            echo 're -- abort rebase'
        case '*'
            echo "Abort $argv? What?"
    end
end
