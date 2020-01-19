## General settings

export LANGUAGE="ja_JP.UTF-8"
export LC_CTYPE="ja_JP.UTF-8"

export LV='-Ou8 -c'
export PAGER='lv'
export LESS='-si'
export EDITOR=nvim
export GIT_EDITOR=$EDITOR

export BC_ENV_ARGS="-l -q $DROPBOX/lib/dotfiles/bcrc.txt"

# Homebrew
if type brew > /dev/null; then
  has_brew=1
  export BREW=`brew --prefix`
  export BREW_INCLUDE_PATH=$BREW/include
  export BREW_LIBRARY_PATH=$BREW/lib
fi

# Zsh

autoload run-help
if [ "$BREW" != "" ]; then
  export HELPDIR=$BREW/share/zsh/helpfiles
fi

# export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig

# CMake

if [ "$_system_type" = Darwin ]; then
  export CXX="$DROPBOX/bin/cxx-complete"
fi

# Java

if [ -d /usr/libexec/java_home ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

## TeX and related tools

if [ "$BREW" != "" ]; then
  export TEXINPUTS=:.//
fi
export BIBINPUTS=$DROPBOX/research:.//
export TEXMKCONF=$DROPBOX/lib/tex/mk

## OCaml and OPAM configuration
#. /Users/wakita/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
#export OPAMSWITCH=4.00.1+annot

## Scheme section

#export SCHEME_LIB=$DROPBOX/lib/scheme
#export SCHEME_LIBRARY_PATH="$SCHEME_LIB/slib/"
#export SCHEME_WORK=$DROPBOX/work/scheme

## Matlab

#export MATLAB=$HOME/work/MATLAB

## Node.js and NPM

if [ "$BREW" != "" ]; then
  export NODE_PATH=$BREW/lib/node_modules:$BREW/share/npm/lib/node_modules:.
  export NODE_DISABLE_COLORS=1
fi

#

# [ $SHLVL=1 ] && [ -d $DROPBOX ] && [ "$ITERM_PROFILE" = Default ] && [ "$SHLVL" = 1 ] && cd $DROPBOX/projects

PATH=$HOME/bin:$PATH
