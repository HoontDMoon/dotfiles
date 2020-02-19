export PYENV_ROOT="$HOME/.pyenv"
export ZPLUG_LOADFILE="$HOME/zshrc.d/packages.zsh"
export HUB_PROTOCOL="https"
# export GVM_ROOT="$HOME/.gvm"
export path=(
    $path
    $PYENV_ROOT/bin
    $HOME/.gem/ruby/2.7.0/bin
    $HOME/.cargo/bin
    $HOME/projects/nvim-test
)
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload bashcompinit
bashcompinit

eval "$(hub alias -s)"

eval $(thefuck --alias)

