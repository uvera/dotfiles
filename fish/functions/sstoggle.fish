function sstoggle --description 'toggle starship git status'
    if test $starship_gitstatus_toggle -eq 0
        command starship config git_status.disabled true
        echo -e "\033[0;31mStarship \033[0;32m[\033[0;33mgit_status\033[0;32m] \033[0;35m-> \033[0;33mdisabled = \033[0;32mtrue"
        set -g starship_gitstatus_toggle 1
    else
        command starship config git_status.disabled false
        echo -e "\033[0;31mStarship \033[0;32m[\033[0;33mgit_status\033[0;32m] \033[0;35m-> \033[0;33mdisabled = \033[0;31mfalse"
        set -g starship_gitstatus_toggle 0
    end
end
