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
alias vim="nvim"
alias ll="eza -Ahl"
alias ls="eza -hl"

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

#go path
export PATH=$PATH:/usr/local/go/bin

#use starship
eval "$(starship init bash)"

unset rc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
