function __ls
    type -q exa
    if test $status -eq 0
        command exa $argv
    else
        command ls $argv
    end
end
