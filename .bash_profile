# Source .bashrc as well
[[ -s ~/.bashrc ]] && source ~/.bashrc

# Load RVM into a shell session *as a function*
source ~/.profile

# NVM
#export NVM_DIR="$HOME/.nvm"
#. "$(brew --prefix nvm)/nvm.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/taylor/google-cloud-sdk/path.bash.inc' ]; then source '/Users/taylor/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/taylor/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/taylor/google-cloud-sdk/completion.bash.inc'; fi

# OPAM configuration
. /Users/taylor/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Postgres 9.6
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
