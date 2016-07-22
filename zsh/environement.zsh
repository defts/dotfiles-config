GEM_HOME=$(ls -t -U | ruby -e 'puts Gem.user_dir')
GEM_PATH=$GEM_HOME

export EDITOR=vim
export PATH=$PATH:$GEM_HOME/bin
