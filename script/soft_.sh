#!/usr/bin/env bash

while true; do
  read -p "Warning: this script uses predefined paths and will mess up the current shell settings. Continue? [y/n] " yn
  case $yn in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
  esac
done

while true; do
  read -p "Soft install. Would you like to place a symbolic link of .zshrc in $HOME? [y/n] " yn
  case $yn in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
  esac
done
rm -rf ~/.zshrc
ln -s ~/.config/dot/zshrc ~/.zshrc

while true; do
  read -p "Soft install. Would you like to add a theme for zsh? this will place a .prompt file in $HOME. [y/n] " yn
  case $yn in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
  esac
done
cp ~/.config/dot/extra/prompt/papercolor_dark.sh ~/.prompt

echo "End of script."
#
