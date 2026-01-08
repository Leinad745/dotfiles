# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#Historial del Franchute
export HISTSIZE=1000000
export HISTFILESIZE=2000000
export HISTTIMEFORMAT='%d-%m-%YT%H:%M:%S'

shopt -s histappend

#ALIASES
alias ls='ls --color=auto'
alias open='xdg-open'
alias la='ls -A'
alias l='ls -CF'
alias ll='ls -alF'
export PATH=/home/5ub4k3m1/.local/bin:/home/5ub4k3m1/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/usr/local/go/bin:/home/5ub4k3m1/scripts/gnirehtet-rust-linux64:/home/5ub4k3m1/.cargo/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias ciberscan="sudo nmap -sCV -p- -Pn -vvv -n --open -sS --min-rate 5000"
alias c='clear'
