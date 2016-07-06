# Setup fzf
# ---------
if [[ ! "$PATH" == */home/defts/.fzf/bin* ]]; then
  export PATH="$PATH:/home/defts/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */home/defts/.fzf/man* && -d "/home/defts/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/defts/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/defts/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/defts/.fzf/shell/key-bindings.zsh"


z() {
  if [[ -z "$*" ]]; then
    cd "$(_z -l 2>&1 | fzf +s --tac | sed 's/^[0-9,.]* *//')"
  else
    _last_z_args="$@"
    _z "$@"
  fi
}

zz() {
  cd "$(_z -l 2>&1 | sed 's/^[0-9,.]* *//' | fzf -q $_last_z_args)"
}

alias j=z
alias jj=zz
