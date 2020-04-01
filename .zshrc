source /home/yaslix/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# # Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# # Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# workaround for https://github.com/zsh-users/antigen/issues/675
THEME=robbyrussell
antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi

# # Tell Antigen that you're done.
antigen apply

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
 
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# vi mode
bindkey -v
export KEYTIMEOUT=1      

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Aliases
alias sau='sudo apt update'
alias saug='sudo apt upgrade'
alias sall='sudo apt update && sudo apt upgrade'
alias arp='sudo arpon -i wlo1 -d'
alias gd='gatsby develop'
alias gdc='gatsby clean && gatsby develop'
alias yd='yarn dev'
alias sp='sudo -u postgres psql'
alias pg='sudo -i -u postgres'
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

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'
LS_COLORS='ow=01;36;40'
export LS_COLORS
export EDITOR=vim
export PATH="$PATH:`yarn global bin`"
export PATH=/home/yaslix/.local/bin:$PATH
