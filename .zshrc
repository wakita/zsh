# zshenv
# zprofile (if login shell)
# zshrc    (if interactive shell)
# zlogin   (if login shell)

source $ZDOTDIR/oh-my-zsh.zsh

if [ $TERM = dumb ]; then export PS1="$ "; fi

[ -d $ZDOTDIR/aliases ] && loadall $ZDOTDIR/aliases/*.alias

loadrc $HOME/.zshrc
