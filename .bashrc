# CONFIG DE SWAY!!!
# REEMPLAZAR POR .bashrc luego

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

#CONFIG DE TORNABOUF
#History

export HISTSIZE=1000000
export HISTFILESIZE=2000000
export HISTTIMEFORMAT='%d-%m-%YT%H:%M:%S'

shopt -s histappend

#ALIASES

unset rc
alias la='ls -A'
alias l='ls -CF'
