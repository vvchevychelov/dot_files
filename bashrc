alias apt-get='sudo apt-get'
# to no lose-vim-colorscheme
export TERM="xterm-256color"
# to no lose-vim-colorscheme-in-tmux-mode
#alias tmux="TERM=screen-256color tmux"
alias tmux="TERM=screen-256color-bce tmux"

alias tree='tree -C'

alias vi='vim'
alias v='vim'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"
alias dev="cd ~/devel"
alias note="vim ~/notes/`date +%Y%m%d_%H%M%S`_note"
alias films="cd /mnt/data/films/"
alias vimrc="vim ~/dot_files/vimrc"
alias bashrc="vim ~/dot_files/bashrc"
alias sbashrc='source ~/.bashrc'
alias tcpdump='sudo tcpdump'
alias scapy='sudo scapy'
alias qt='sudo /opt/Qt/Tools/QtCreator/bin/qtcreator'

# don`t lose this!
# sudo sshfs -o allow_other -o kernel_cache -o auto_cache -o reconnect -o compression=no -o cache_timeout=600 -o ServerAliveInterval=15 root@192.168.10.217:/ /mnt/buildv8
# sudo sshfs -o umask=0000   root@192.168.10.217:/ /mnt/buidv8

alias cs='find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" > cscope.files;cscope -k -q -R -b -i cscope.files'
alias fecorouter='ssh-keygen -f "/home/nix/.ssh/known_hosts" -R 192.168.255.1; ssh -i ~/.ssh/ecorouter root@192.168.255.1'
alias ecorouter='ssh -i ~/.ssh/ecorouter root@192.168.255.1'
alias pr='cd ~/projects/data-plane/'
alias cl='sudo rm -rf /tmp/*.pcap'

alias ecobuild='ecorouter/ecobuild_livecd.sh -b -m -D'
alias gen_platform='./tools/gen_platform_header.sh -p default -B autotest'
#editcap -S -1.0 2.pcap 3.pcap
#mergecap 1.pcap 2.pcap -w 3.pcap
#rsync -e "ssh -i /home/nix/.ssh/ecorouter" /home/nix/projects/dplane -av --delete --exclude .git --exclude router/build --exclude build root@192.168.255.1: 

#source ~/.bash-git-prompt/gitprompt.sh
#GIT_PROMPT_ONLY_IN_REPO=1
#GIT_PROMPT_SHOW_UPSTREAM=1
#GIT_PROMPT_THEME=Single_line_openSUSE
export PATH=$PATH:/home/nix/scripts
