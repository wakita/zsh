# zshenv
# zprofile (if login shell)
# zshrc    (if interactive shell)
# zlogin   (if login shell)

mkdir -p ~/.tmp/zsh
autoload -U compinit
compinit -d ~/.tmp/zsh/compdump

# source $ZDOTDIR/oh-my-zsh.zsh
loadrc $ZDOTDIR/.zprezto/init.zsh
loadrc $ZDOTDIR/preztorc
HISTFILE=~/var/zsh/history

cdpath=($HOME/projects $DROPBOX/doc $DROPBOX/doc/classes $DROPBOX/research/projects $DROPBOX/research/mypaper $DROPBOX)

if [ $TERM = dumb ]; then export PS1="$ "; else PS1='
'"$PS1"; fi

loadall $ZDOTDIR/aliases
loadrc $HOME/.zshrc

# if [ -d $HOME/.rvm/bin ]; then path+=$HOME/.rvm/bin; fi # Add RVM to PATH for scripting
