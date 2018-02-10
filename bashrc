OS=`uname`
source $HOME/.prompt
# If not running interavarrcctively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Homebrew init
if [[ $OS == 'Darwin' ]]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi
fi

# Dotfiles directory dectection
if [ -d "$HOME/.config/dot" ]; then
  DOT="$HOME/.config/dot"
elif [ -d "$HOME/Dotfiles" ]; then
  DOT="$HOME/Dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi

# Sourcing dot files
for DOTFILE in $DOT/bexts/*; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done
unset DOTFILE

### .bashrc  ###
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
