if test -f /usr/bin/ssh-agent
    if test -z (pgrep -u "$USER" ssh-agent) 
        ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
    end
end