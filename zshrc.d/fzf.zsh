# Setup fzf
# ---------
if [[ ! "$PATH" == */home/hoontermood/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/hoontermood/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/hoontermood/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/hoontermood/.fzf/shell/key-bindings.zsh"
