#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/helpers.sh"

# Example:
# bind-key C-i if-shell "#{at_edge} L" "display at_edge" "display no"
tmux set-environment -g at_edge $CURRENT_DIR/scripts/at_edge.sh
