
#-- ENVIRONMENT --#

LS_COLORS='di=0;36:ex=1;36:ln=1;37'
alias ptree='ptree -SndPcO'
alias tree='tree --dirsfirst -v'
alias ls='ls --group-directories-first --color=auto'

HISTFILE=~/.zsh-history
HISTSIZE=512
SAVEHIST=512

EDITOR=nvim
ROOTER=sudo

PS1="<%F{cyan}%(3~|%-1~/.../%1~|%2~)%f> "
PROMPT_DIRTRIM=1

#-- PROGRAMMING --#

alias clp='xclip -selection clip'

# shell

alias edit="$EDITOR $HOME/.zshrc"
alias reload="source $HOME/.zshrc"

# assembly

alias asm='nasm -f elf64'

# git

alias add='git add'
alias commit='git commit'
alias status='git status'
alias push='git push'
alias pull='git pull'
alias undo='git reset --soft HEAD~1'

#-- PACKAGES --#

alias apr='asp export'
aur () {git clone https://aur.archlinux.org/$1}
yay () {aur $1 && cd $1 && makepkg -sirc && cd ..}

#-- DISPLAY --#

xdisplay=`xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1`
alias light="$ROOTER light -S"

#-- FUN --#

RADIO='http://playerservices.streamtheworld.com/api/livestream-redirect/KINK.mp3'
alias radio="mpv $RADIO --volume=50"

#-- ETC --#

alias virt-start-default-network="$ROOTER virsh net-start default"

