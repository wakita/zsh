## General settings

path+=/usr/local/bin
path=(/Applications/MacVim.app/Contents/MacOS $path)

export MYWEBSITE="http://localhost/~wakita/"

cdpath=(.. $HOME/projects $DROPBOX $DROPBOX/doc/classes $DROPBOX/research/projects)

export LANGUAGE="ja_JP.UTF-8"
export LC_CTYPE="ja_JP.UTF-8"

export LV='-i -Ou8'
export PAGER='lv'
export LESS='-si'
export EDITOR='mvim -f'

export GREP_OPTIONS='-i'

export BC_ENV_ARGS="-l -q $HOME/.bcrc"

## Homebrew

brew=/opt/brew
# PATH=$brew/bin:$brew/share/npm/bin:./bin:$PATH:$DROPBOX/bin
# for p in $brew/man /usr/share/man /usr/local/share/man /usr/X11/man; do
#   if [[ -d $p ]]; then manpath+=$p; fi
# done
export LD_LIBRARY_PATH=$brew/lib
export DYLD_FALLBACK_LIBRARY_PATH=$HOME/lib:$brew/lib:/usr/local/lib:/lib:/usr/lib
export C_INCLUDE_PATH=$brew/include
export CPLUS_INCLUDE_PATH=$brew/include

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

path+=/usr/local/texlive/2013/bin/x86_64-darwin
export TEXINPUTS=:.//:$brew/Cellar/noweb2.11b/tex//
export BIBINPUTS=$HOME/research:.//

## OCaml and OPAM configuration
. /Users/wakita/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
#export OPAMSWITCH=4.00.1+annot

## Scheme section

export SCHEME_LIB=$DROPBOX/lib/scheme
export SCHEME_WORK=$DROPBOX/work/scheme

# export GAUCHE_LOAD_PATH=.
# GAUCHE_LOAD_PATH=$SCHEME_LIB/gauche:$SCHEME_LIB
# GAUCHE_LOAD_PATH+=:$SCHEME_WORK/gauche
# GAUCHE_LOAD_PATH+=:.

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

export NODE_PATH=/opt/brew/lib/node_modules:/opt/brew/share/npm/lib/node_modules:.
export NODE_DISABLE_COLORS=1

## Mallet

export MALLET=$HOME/Software/mallet-2.0.7

## ExJS

export EXJS=$DROPBOX/research/projects/exjs/src
path+=$EXJS

## D4D

export D4D_DATA_ROOT=$HOME/data/d4d
export D4D_PROJECT_ROOT=$DROPBOX/research/projects/d4d
unset brew

if [ -d $DROPBOX ]; then
  cd $DROPBOX
fi
