export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false

plugins=(poetry git fzf zsh-autosuggestions tmux)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/miniconda3/bin"
export PATH="$PATH:/usr/bin/flutter/bin"
export PATH="$PATH:/opt/node-v20.13.1-linux-x64/bin"
export PATH="$PATH:$HOME/.local/share/android-studio/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
eval "$(zoxide init zsh --cmd cd)"

alias nv="nvim ."
alias condaa="conda init zsh && omz reload"
alias condad="conda init --reverse zsh && omz reload"
alias nvzsh="nvim ~/.zshrc"
alias findf="find . -path ./.git -prune -o -print | fzf-tmux -p | xargs nvim"
alias findd="find . -type d -path ./.git -prune -o -print | fzf-tmux -p | xargs cd"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

myip() {
    local ip=$(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}')
    echo $ip
}
