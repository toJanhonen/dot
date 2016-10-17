#general
active=colour51
inactive=colour251
feature=colour171

#status
set -g status-interval 5

set -g status-left-length 50
set -g status-right-length 150

set-window-option -g window-status-format "#I #W"
set-window-option -g window-status-current-format "#I #W"

set-option -g status-bg default
set-option -g status-fg $active

set-window-option -g window-status-bg default
set-window-option -g window-status-fg $inactive

set-window-option -g window-status-current-bg default
set-window-option -g window-status-current-fg $active

#pane
set-option -g pane-border-fg $inactive
set-option -g pane-active-border-fg $active

set-option -g display-panes-colour $inactive
set-option -g display-panes-active-colour $active

#message
set-option -g message-bg default
set-option -g message-fg $active

#mode
set-window-option -g mode-bg default
set-window-option -g mode-fg $active

set-window-option -g clock-mode-colour $active

#render
session="#[fg=$feature]#S"

music="#[fg=$feature]#(osascript ~/.script/music.scpt)"
date="#[fg=$inactive]%r"
host="#[fg=$inactive]@ruby"

set -g status-left $session' '
set -g status-right $music' '$date' '$host
