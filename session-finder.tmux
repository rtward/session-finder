#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux set-option -g status-left ' #($CURRENT_DIR/session-finder.bash status) '
tmux bind-key -n 'M-`' run -b     '$CURRENT_DIR/session-finder.bash next'
tmux bind-key -n 'M-~' run -b     '$CURRENT_DIR/session-finder.bash prev'
tmux bind-key -n 'M-q' run -b     '$CURRENT_DIR/session-finder.bash last'
tmux bind-key -n 'M-p' new-window '$CURRENT_DIR/session-finder.bash finder'
