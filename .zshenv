export HISTFILE=$HOME/.zsh_hisory
export SAVEHIST=10000
export GDRIVE="$HOME/Google ドライブ"

loadrc() { [ -r $1 ] && . $1 }
loadall() { [ -d $1 ] && for rc in $1/*; do loadrc $rc; done }

loadrc "$ZDOTDIR/.zprezto/runcom/zshenv"
loadrc "$ZDOTDIR/env"
