## General settings

export LANGUAGE="ja_JP.UTF-8"
export LC_CTYPE="ja_JP.UTF-8"

export LV='-Ou8 -c'
export PAGER='lv'
export LESS='-si'
export EDITOR='open -a MacVim.app'

export BC_ENV_ARGS="-l -q $HOME/.bcrc"

# brew
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

# X10

# x10_home=$DROPBOX/Applications/x10-2.4.1_macosx_x86
# if [ -d $x10_home ]; then
#   export X10_HOME=$x10_home
#   path+=$X10_HOME/bin
# # export X10_HOSTFILE=<hostfile>
# # export X10_NPLACES=<num_places> <CLASSPATH>
# fi

## TeX and related tools

if [ "$BREW" != "" ]; then
  export TEXINPUTS=:.//:$BREW/tex//
fi
export BIBINPUTS=$DROPBOX/research:.//
export TEXMKCONF=$DROPBOX/lib/tex/mk

## OCaml and OPAM configuration
. /Users/wakita/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
#export OPAMSWITCH=4.00.1+annot

## Scheme section

export SCHEME_LIB=$DROPBOX/lib/scheme
export SCHEME_LIBRARY_PATH="$SCHEME_LIB/slib/"
export SCHEME_WORK=$DROPBOX/work/scheme

export YPSILON_SITELIB=""
YPSILON_SITELIB=$SCHEME_LIB/ypsilon:$SCHEME_LIB
YPSILON_SITELIB+=:$SCHEME_WORK/ypsilon
YPSILON_SITELIB+=:$SCHEME_WORK
YPSILON_SITELIB+=:.
export YPSILON_LOADPATH=$YPSILON_SITELIB
export YPSILON_ACC="$HOME/.ypsilon"

## Python


## Ruby

#if [ "$BREW" != "" ]; then
#  PATH=$BREW/bin:$PATH
#fi

## Revision control systems

export CVS_RSH=ssh

## Matlab

export MATLAB=$HOME/work/MATLAB

## OMake

export OMAKEFLAGS="--force-dotomake"

## Node.js and NPM

if [ "$BREW" != "" ]; then
  export NODE_PATH=$BREW/lib/node_modules:$BREW/share/npm/lib/node_modules:.
  export NODE_DISABLE_COLORS=1
fi

## Mallet

export MALLET=$HOME/Software/mallet-2.0.7

## ExJS


_exjs=$DROPBOX/research/projects/exjs/src
if [ -d $_exjs ]; then
  export EXJS=$DROPBOX/research/projects/exjs/src
  path+=$EXJS
fi

[ $SHLVL=1 ] && [ -d $DROPBOX ] && [ "$ITERM_PROFILE" = Default ] && cd $DROPBOX

if [ $SHLVL=1 ] && [ -d $DROPBOX ]; then
  case $ITERM_PROFILE in
  (Default) cd $DROPBOX ;;
  (Paper1)  cd $DROPBOX/research/mypaper/$PAPER1 ;;
  (Paper2)  cd $DROPBOX/research/mypaper/$PAPER2 ;;
  (Paper3)  cd $DROPBOX/research/mypaper/$PAPER3
  esac
fi

PATH=$HOME/bin:$PATH

