source ~/.zplug/init.zsh

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "hlissner/zsh-autopair", defer:2
zplug "wfxr/formarks"
zplug "zdharma/fast-syntax-highlighting", defer:3
zplug "Aloxaf/fzf-tab"

zplug load

compinit

bindkey -e

eval $(thefuck --alias)

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
autoload bashcompinit
bashcompinit

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
autoload -Uz ~/zshrc.d/functions/**/*
