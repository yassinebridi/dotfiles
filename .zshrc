export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/yaslix/.oh-my-zsh"
export EDITOR='vim'
ZSH_THEME="robbyrussell"
plugins=(nvm zsh-autosuggestions zsh-syntax-highlighting zsh-completions)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh
export PATH="$PATH:`yarn global bin`"

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Aliases
alias sau='sudo apt update'
alias saug='sudo apt upgrade'
alias sall='sudo apt update && sudo apt upgrade'
alias arp='sudo arpon -i wlo1 -d'
alias gd='gatsby develop'
alias gdc='gatsby clean && gatsby develop'
alias yd='yarn dev'
alias sp='sudo -u postgres psql'
alias pd='prisma deploy'
alias pdf='prisma deploy --force'
alias pdt='prisma delete'
alias nrd='npm run dev'
alias dcu='sudo docker-compose up -d'
alias dcs='sudo docker-compose stop'
alias pld='youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias open='explorer.exe .'
alias szsh='source /home/yaslix/.zshrc'
alias server='python -m SimpleHTTPServer 8080'
alias node=nodejs
alias ci=code-insiders
alias yrd='yarn redwood dev'
alias yr='yarn redwood'
alias yrg='yarn redwood generate'
alias yrs='yarn redwood generate scaffold'
alias sps='service postgresql status'
alias svim='sudo -E vim'

ytp(){
  yarn add -D "@types/"$@
}

ywa(){
  yarn workspace $1 add $2
}

ywa(){
  yarn workspace $1 add $2
}

openpg(){
  sudo -u $1 psql
}

gac(){
  git add . && git commit -m $1
}

gacp(){
  git add . && git commit -m $1 && git push origin master
}
