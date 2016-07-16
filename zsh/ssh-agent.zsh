if ! pgrep -u $USER ssh-agent > /dev/null; then
  if [ -f ~/.ssh-agent-thing ]; then
    rm -f ~/.ssh-agent-thing 
  fi
  ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
  eval $(<~/.ssh-agent-thing)
fi
ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'
