#!/bin/sh

brew install zsh fzf

sed 's/<Machine Name>/$HOSTNAME/' $HOME/Dropbox/lib/zsh/zshenv > $HOME/.zshenv

chsh -s /usr/local/bin/zsh $USER

echo $fg_bold[red] "Add the following settings to .zshrc"
cat<<-EOD
  compinit -d ${HOME}/.tmp/zsh/compdump
  HISTFILE=${HOME}/.tmp/zsh/history
EOD
