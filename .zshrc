source ~/.zplug/init.zsh

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "hlissner/zsh-autopair", defer:2
zplug "wfxr/formarks"
zplug "zdharma/fast-syntax-highlighting", defer:3
zplug "Aloxaf/fzf-tab"

zplug load

unsetopt Beep

export PATH=$PATH:/usr/local/go/bin

bindkey -e

source "$(navi widget zsh)"

# fzf

# load all files from zshrc.d directory
if [ -d $HOME/zshrc.d/ ]; then
    for file in $HOME/zshrc.d/*zsh; do
        source $file
    done
fi

# load files from rc.d directory
if [ -d $HOME/rc.d ]; then
    for file in $HOME/rc.d/*.sh; do
        source $file
    done
fi
fpath=($fpath ~/zshrc.d/functions)
# autoload -U compinit && compinit
autoload -Uz ~/zshrc.d/functions/**/*
eval "$(starship init zsh)"

[[ -s "/home/hoontermood/.gvm/scripts/gvm" ]] && source "/home/hoontermood/.gvm/scripts/gvm"
