HISTFILE=~/.history
HISTSIZE=700
SAVEHIST=700


#
bindkey -v

#
zstyle :compinstall filename '/Users/thomas.janhonen/.zshrc'
zstyle ':completion:*:*:*:*:*' menu select

autoload -U compinit colors
compinit
colors



#
setopt all_export

setopt extended_history
setopt hist_ignore_space
setopt hist_ignore_dups

setopt menu_complete
setopt auto_menu

setopt auto_list



#
source ~/.console/configuration.zsh
source ~/.console/command.zsh
source ~/.console/function.zsh



#git clone https://github.com/zsh-users/antigen.git .antigen
source ~/.antigen/antigen.zsh
antigen bundle soimort/translate-shell



#
source ~/.z.bash
source ~/.syntax/syntax.zsh

source ~/.history.zsh

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down



#
source ~/.console/visual.zsh



#
source ~/.console/export.zsh



clear
