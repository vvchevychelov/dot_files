alias apt-get='sudo apt-get'
# to no lose-vim-colorscheme
export TERM="xterm-256color"
# to no lose-vim-colorscheme-in-tmux-mode
alias tmux="TERM=screen-256color tmux"
#alias tmux="TERM=screen-256color-bce tmux"

alias tree='tree -C'
alias devel='cd ~/devel/'

# don`t lose this!
# sudo sshfs -o allow_other -o kernel_cache -o auto_cache -o reconnect -o compression=no -o cache_timeout=600 -o ServerAliveInterval=15 root@192.168.10.217:/ /mnt/buildv8
# sudo sshfs -o umask=0000   root@192.168.10.217:/ /mnt/buidv8

alias cs='find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" > cscope.files;cscope -q -R -b -i cscope.files'

