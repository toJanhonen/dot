#
precmd() {
  tab_label=${PWD/${HOME}/\~}

  #not sure why
  echo -ne "\e]1;${tab_label}\a"
}



#
ready_player_one() {
  git rev-parse --is-indside-work-tree &> /dev/null || return

  where=$(git symbolic-ref --quiet HEAD | sed -e 's|^refs/heads/||')
  clean=$(git diff --quiet --ignore-submodules HEAD &> /dev/null; [ $? -eq 1 ] && echo -e $fg[white]'['$fg[magenta]$git_status_visual$fg[white]']'$reset_color)

  echo %{$fg[white]%}' on '%{$fg[cyan]%}$where$clean%{$reset_color%}
}



#
mac() {
  #
  #defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

  #
  defaults write com.apple.screencapture type -string 'png'
}

instance() {
  echo $fg[magenta]'server instance initiation'$reset_color

  please launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist
  please launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist
}
