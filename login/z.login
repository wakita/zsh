## General settings

export LANGUAGE="ja_JP.UTF-8"
export LC_CTYPE="ja_JP.UTF-8"

export LV='-i -Ou8'
export PAGER='lv'
export LESS='-si'
export EDITOR='mvim -f'

export GREP_OPTIONS='-i'

export BC_ENV_ARGS="-l -q $HOME/.bcrc"

# Zsh

autoload run-help
export HELPDIR=$brew/share/zsh/helpfiles

# export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig

# Java

if [ -d /usr/libexec/java_home ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

# X10

export X10_HOME=$DROPBOX/Applications/x10-2.4.1_macosx_x86
path+=$X10_HOME/bin
# export X10_HOSTFILE=<hostfile>
# export X10_NPLACES=<num_places> <CLASSPATH>

## TeX and related tools

export TEXINPUTS=:.//:`brew --prefix noweb`/tex//
export BIBINPUTS=$DROPBOX/research:.//
export TEXMKCONF=$DROPBOX/lib/tex/mk

## OCaml and OPAM configuration
. /Users/wakita/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
#export OPAMSWITCH=4.00.1+annot

## Scheme section

export SCHEME_LIB=$DROPBOX/lib/scheme
export SCHEME_WORK=$DROPBOX/work/scheme

export YPSILON_SITELIB=""
YPSILON_SITELIB=$SCHEME_LIB/ypsilon:$SCHEME_LIB
YPSILON_SITELIB+=:$SCHEME_WORK/ypsilon
YPSILON_SITELIB+=:$SCHEME_WORK
YPSILON_SITELIB+=:.
export YPSILON_LOADPATH=$YPSILON_SITELIB
export YPSILON_ACC="$HOME/.ypsilon"

## Python

export PYTHONPATH="$HOME/lib/python2.7/site-packages"

## Ruby

PATH=$(brew --prefix ruby)/bin:$PATH

## Revision control systems

export CVS_RSH=ssh

## Matlab

export MATLAB=$HOME/work/MATLAB

## OMake

export OMAKEFLAGS="--force-dotomake"

## Node.js and NPM

export NODE_PATH=$brew/lib/node_modules:$brew/share/npm/lib/node_modules:.
export NODE_DISABLE_COLORS=1

## Mallet

export MALLET=$HOME/Software/mallet-2.0.7

## ExJS

export EXJS=$DROPBOX/research/projects/exjs/src
path+=$EXJS

if [ -d $DROPBOX ]; then
  cd $DROPBOX
fi
