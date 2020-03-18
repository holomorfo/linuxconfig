# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/cbanuelos/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-autosuggestions vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

EDITOR=vim
export VISUAL=vim
# PAGER=nvim
export NNN_DE_FILE_MANAGER=nautilus

# JEDI aliases
alias trsh="gio trash"
alias fo="xdg-open ."
alias n="nnn"
alias v="vifm ."
alias x="exit"
alias c='clear'
alias vims='vim -S'
alias vim='~/nvim.appimage'
alias jn="jupyter notebook"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias bat='acpi'
alias k=kubectl
alias gc="git add -A && git commit -m"
alias ge="git add -A && git commit -m \"Update\" && git push"
alias gp="git push"
gsen() {
	#do things with parameters like $1 such as
	git add -A && git commit -m "$1" && git push
}
# Tmux
alias tn="tmux new -s"
alias ts="tmux switch -t"
alias td="tmux detach"
alias ta="tmux attach-session -t"
alias tl="tmux list-sessions"
alias tkill="tmux kill-session"
alias tkills="tmux kill-session -t"


stty start undef
stty stop undef
setopt noflowcontrol

# Change user for other computers
export PATH="/home/cbanuelos/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/cbanuelos/.vimpkg/bin:/home/cbanuelos/dart-sass"

# This is for AWS
export PATH=/home/ec2-user/.local/bin:$PATH

# export TERM=xterm-256color
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# if [ "$TMUX" = "" ]; then tmux; fi
