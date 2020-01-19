export DROPBOX="$HOME/Dropbox"
export ICLOUD="$HOME/icloud"
export GDRIVE="$HOME/gdrive"

export ZDOTDIR="$DROPBOX/lib/zsh"
export ZPREZTO="$ZDOTDIR/.zprezto"
export ZPREZTO_RC="$ZPREZTO/runcoms"

loadrc() { [ -r $1 ] && . $1 }
loadall() { [ -d $1 ] && for rc in $1/*; do loadrc $rc; done }

loadrc "$ZPREZTO_RC/zshenv"
loadrc "$ZDOTDIR/env"
