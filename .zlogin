if [ -d $ZDOTDIR/login ]; then
  for f in $ZDOTDIR/login/*.login; do source $ZDOTDIR/login/*.login; done
fi

if [ -r $HOME/.zlogin ]; then source $HOME/.zlogin; fi
