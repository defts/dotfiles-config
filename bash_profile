# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you dont want to commit.
for file in ~/.{bash_prompt,exports,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# EXPORT pgpass
if [ -f "${HOME}/.pgpass" ]; then
  export PGPASSFILE=${HOME}/.pgpass
fi;

# GNU core utilities
if [ -d "$(brew --prefix coreutils)/libexec/gnubin" ]; then
  export PATH=$PATH:"$(brew --prefix coreutils)/libexec/gnubin";
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi;

# Add tab completion for many Bash commands
if [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
  source "$(brew --prefix)/share/bash-completion/bash_completion";
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# if [ -f "$(brew --prefix nvm)/nvm.sh" ]; then
#   export NVM_DIR="$HOME/.nvm"
#   source $(brew --prefix nvm)/nvm.sh
# fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ddias/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/ddias/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ddias/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/ddias/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export PATH="/usr/local/sbin:$PATH"
export PGPASSFILE=${HOME}/.pgpass

