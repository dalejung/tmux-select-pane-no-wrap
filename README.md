# Select Pane No Wrap

This plugin exposes scripts that won't wrap around panes when during
`select-pane [UDLR]`.

# tmux.conf
Uses tmux plugin manager.
```
# Smart pane switching with awareness of vim splits
# See: https://github.com/christoomey/vim-tmux-navigator
is_vim='echo "#{pane_current_command}" | grep -iqE "(^|\/)g?(view|n?vim?x?)(diff)?$"'
bind C-h if-shell "$is_vim" "send-keys ,ztl" "run '#{select_pane_no_wrap} L'"
bind C-j if-shell "$is_vim" "send-keys ,ztd" "run '#{select_pane_no_wrap} D'"
bind C-k if-shell "$is_vim" "send-keys ,ztu" "run '#{select_pane_no_wrap} U'"
bind C-l if-shell "$is_vim" "send-keys ,ztr" "run '#{select_pane_no_wrap} R'"

set -g @plugin 'dalejung/tmux-select-pane-no-wrap'
run '~/.tmux/tpm/tpm'
```

# vim

I use a modified `vim-tmux-navigator` because the command it uses it hardcoded.

```
call plug#begin('~/.vim/plugged')
...
Plug 'dalejung/vim-tmux-navigator', {'branch': 'select_pane_no_wrap'}
...
call plug#end()
```
