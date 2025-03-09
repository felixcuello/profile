alias cpsq="tmux new -s tmux_psq"
alias psq="tmux attach -d -t tmux_psq; clear"

alias cup="tmux new -s tmux_up"
alias up="tmux attach -d -t tmux_up; clear"

alias gl="git log --graph --oneline --decorate --all"
alias gc="git commit -v"  # verbose commit (you can also configure this git config --global commit.verbose true)

alias e=neovide

source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt appendhistory

