# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/belair_b/.oh-my-zsh
export PROJECT_HOME=/home/belair_b/projects
export CURRENT_PROJECT=riverrun

# ZSH_THEME="candy"
# ZSH_THEME="amuse"
# ZSH_THEME="gallois"
ZSH_THEME="cloud"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"
 ENABLE_CORRECTION="true"
 COMPLETION_WAITING_DOTS="true"
 HIST_STAMPS="mm/dd/yyyy"

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

#lazy stuff
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ls='ls -lah'
alias sz='source ~/.zshrc'

plugins=(git zsh-autosuggestions kubectl autoenv docker)

source $ZSH/oh-my-zsh.sh

alias chaland='ssh core@chaland.si.uqam.ca'
alias cargo='ssh core@cargo.si.uqam.ca'
alias vraquier='ssh core@vraquier.si.uqam.ca'
alias roulier='ssh core@roulier.si.uqam.ca'
alias ferry='ssh core@ferry.si.uqam.ca'
alias transporteur='ssh core@transporteur.si.uqam.ca'

PATH=$PATH:/usr/local/go/bin

# projects
alias project="cd ~/projects/$CURRENT_PROJECT"
alias gov="cd $VIRTUAL_ENV/bin"
alias journal="cd ~/projects/goals"

# git stuff
alias startover='git status | grep "modified" | awk "{print \$2}" | xargs -I{} git checkout -- {}'

# tmux stuff
alias tmux="TERM=screen-256color-bce tmux"
alias tm="tmux new-session"
alias tl="tmux list-sessions"
alias ta="tmux attach -t"

# django stuff
# alias rabbit="invoke-rc.d rabbitmq-server"
# alias dtest="project && python manage.py test"
# alias celeryworker="celery -A $CURRENT_PROJECT worker -l info"
# alias runserver="cd ~/projects/$CURRENT_PROJECT && python manage.py runserver"
# alias collect="cd ~/projects/$CURRENT_PROJECT && python manage.py collectstatic"

# edit dotfiles
alias dotfiles="cd ~/dotfiles && git status"
alias editzshrc="vim ~/dotfiles/.zshrc"
alias editvimrc="vim ~/dotfiles/.vimrc"
alias edittmux="vim ~/dotfiles/tmux.config"
alias ohmyzsh="vim ~/.oh-my-zsh"

