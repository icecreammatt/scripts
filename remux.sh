#!/bin/bash
# Split an existing tmux session into 75% top of current window
# and 25% with a split bottom. This is useful for when you have already
# Started devmux but want to have a new window be the same.

# the 22 comes from splitting the window in half twice and deleting
# the second section to make the top one larger while leaving a
# smaller area for a prompt and task runner window at the bottom
tmux split-window -v -p 22 'zsh'
tmux split-window -h 'zsh'
