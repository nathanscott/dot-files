# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="nathanscott"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(rails rails3 git heroku sublime ruby lighthouse rbenv bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Aliases
alias g='git status -sb'
alias ga='git add'
alias gd='git diff'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gd='git diff --word-diff'
alias gr='git remote -v'

alias gf='git flow'
alias gt='gittower'

alias p='ping google.com'
alias o='open'
alias s='subl'
cds() { builtin cd "$@"; ll; }

paras() {
  rake parallel:create\[8\]]
  rake parallel:prepare\[8\]
}
alias para='rake parallel:spec\[8\]'

alias t='tail -f'
alias z='zeus'
alias h='heroku'

# bind keys

bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

unsetopt correct_all

# rvm

[[ -s "/Users/nathan/.rvm/scripts/rvm" ]] && source "/Users/nathan/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# editor

export EDITOR='subl -n -w'
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/opt:$PATH
export PATH=$HOME/.rbenv/bin:/usr/local/share/npm/bin:$PATH

eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"
