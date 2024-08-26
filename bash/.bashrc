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

#aliases
alias cdn="cd ~/Documents/notes"
alias ll="eza -Ahl"
alias ls="eza -hl"
alias nvim="~/appimages/nvim.appimage"

#functions
mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

fcd ()
{
    cd $(find . -type d | fzf)
}

fim ()
{
    vim $(find . -type f | fzf)
}

ifzf ()
{
    kitten icat $(find . -type f | fzf)
}

# fod-fin proxy
export http_proxy=http://proxies.finbel.intra:8080
export https_proxy=http://proxies.finbel.intra:8080
export no_proxy='localhost,127.0.0.0/8,.finbel.intra,.svc,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16,172.26.0.0/16'
export HTTP_PROXY=http://proxies.finbel.intra:8080
export HTTPS_PROXY=http://proxies.finbel.intra:8080
export NO_PROXY='localhost,127.0.0.0/8,.finbel.intra,.svc,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16,172.26.0.0/16'

eval "$(starship init bash)"

unset rc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
