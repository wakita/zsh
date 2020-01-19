# zshenv
# zprofile (if login shell)
# zshrc    (if interactive shell)
# zlogin   (if login shell)

mkdir -p $HOME/.tmp/zsh
export HISTFILE=$HOME/.tmp/zsh/history
export SAVEHIST=10000
autoload -U compinit
compinit -d $HOME/.tmp/zsh/compdump
zstyle ':completion:*' cache-path $HOME/.tmp/zsh/compcache

loadrc $ZPREZTO_RC/zshrc
loadrc $ZDOTDIR/preztorc

if [ $TERM = dumb ]; then export PS1="$ "; else PS1='
'"$PS1"; fi

source $DROPBOX/lib/fzf/zshrc

loadrc $ZPREZTO_RC/aliases
loadall $ZDOTDIR/aliases
loadrc $HOME/.zshrc
