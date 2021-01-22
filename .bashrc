export PATH="$PATH:$HOME/bin" # Add home bin
export EDITOR=vim
# export EDITOR=subl

alias v='vim'
alias ll='ls -l'
source ~/.aliases

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="$HOME/.local/bin:$PATH"

### Global Defaults.
# RIP NestEgg
# export DATABASE_URL=jdbc:mysql://localhost/nestegg_development?serverTimezone=UTC
# export DATABASE_USER=root
# export DATABASE_PASSWORD=

### Infinite History
HISTSIZE= HISTFILESIZE=

### Go
#export GOROOT=$HOME/code/go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
#export PATH=$PATH:/usr/local/opt/go/libexec/bin
### Compilers
# export CC=/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/gcc-4.2
# export CXX=/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/g++-4.2
# export CPP=/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/cpp-4.2

### Git
alias gs='git status'
alias gc='git checkout'
alias gcp='git cherry-pick'
alias gap='git add --patch'

# Add git branch to terminal name.
source ~/bin/git-completion.bash
source ~/bin/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '

# History Search
if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

complete -C /usr/local/Cellar/terraform/0.11.10/bin/terraform terraform
