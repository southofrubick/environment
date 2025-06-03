#!/bin/sh

SESSION_NAME="Octane"

if tmux has-session -t $SESSION_NAME 2>/dev/null; then
    echo "Session $SESSION_NAME already exists. Attaching to it."
    tmux attach-session -t $SESSION_NAME
else
    tmux new-session -d -s $SESSION_NAME

    tmux rename-window 'Logs'
    tmux send-keys 'servlog' 'C-m'
    tmux split-window -h
    tmux send-keys 'servww' 'C-m'
    tmux split-window -v
    tmux send-keys 'servfe' 'C-m'
    tmux split-window -v
    tmux send-keys 'servwp' 'C-m'

    tmux new-window
    tmux rename-window 'Octane'
    tmux send-keys 'cdoc && v .' 'C-m'
    tmux split-window -h
    tmux send-keys 'cdoc' 'C-m'
    tmux split-window -v
    tmux send-keys 'cdoc && shoc .' 'C-m'

    tmux new-window
    tmux rename-window 'Web-App'
    tmux send-keys 'cdww && v .' 'C-m'
    tmux split-window -h
    tmux send-keys 'cdww' 'C-m'
    tmux split-window -v
    tmux send-keys 'cdww && ytest' 'C-m'

    tmux attach-session -t $SESSION_NAME
fi

