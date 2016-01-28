export EDITOR="vim"



export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which plenv > /dev/null; then eval "$(plenv init -)"; fi

export PATH="/usr/local/heroku/bin:$PATH"

eval $(docker-machine env default)
