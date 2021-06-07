#!/bin/sh

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install brew stuff
# Have to untap openjdk first in order to prevent tap conflicts:
# https://github.com/AdoptOpenJDK/homebrew-openjdk/issues/106
brew untap adoptopenjdk/openjdk
brew bundle

# Karabiner config
cp karabiner/karabiner.json ~/.config/karabiner/karabiner.json
