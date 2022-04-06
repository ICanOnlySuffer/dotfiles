
#-- ENVIRONMENT --#

export LS_COLORS='di=0;36:ex=1;36:ln=1;37'
export EDITOR=nvim
export ROOTER=sudo

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

alias tree='tree --dirsfirst -v'
alias ptv='ptv -SndPcM'
alias ls='ls --group-directories-first --color=auto'

HISTFILE=~/.zsh-history
HISTSIZE=512
SAVEHIST=512

PS1="<%F{cyan}%(3~|%-1~/.../%1~|%2~)%f> "

#-- PROGRAMMING --#

alias clip='xclip -selection clip'
alias rm='trash-put'

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
# yay () {aur $1 && cd $1 && makepkg -sirc && cd ..}

#-- DISPLAY --#

xdisplay=`xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1`
alias light="$ROOTER light -S"

#-- ETC --#

alias virt-start-default-network="$ROOTER virsh net-start default"
alias usb-mount='udisksctl mount -b'
alias usb-umount='udisksctl unmount -b'

