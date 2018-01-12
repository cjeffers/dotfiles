KIRKE=$HOME/Repos/kirke

tmux new-window -n 'kirke'
tmux split-window -h
tmux split-window -h

# edit 1
tmux select-pane -t 0
tmux resize-pane -x 91
tmux send-keys "cd $KIRKE" C-m

# edit 2
tmux select-pane -t 1
tmux resize-pane -x 91
tmux send-keys "cd $KIRKE" C-m

# shell
tmux select-pane -t 2
tmux send-keys "cd $KIRKE" C-m

tmux split-window -v
tmux split-window -v

# test
tmux select-pane -t 3
tmux send-keys "cd $KIRKE && docker-compose run --rm kirke run test:watch" C-m

# server
tmux select-pane -t 4
tmux send-keys "cd $KIRKE && docker-compose up" C-m

# go back to edit 1
tmux select-pane -t 0
