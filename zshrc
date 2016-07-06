export TERM=xterm-256color

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

promptinit
prompt skwp

for config_file ($HOME/.zsh/*.zsh) source $config_file
