#!/bin/sh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# Install NVM and Node 16
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
nvm install 16

# Install Rustup for Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install everything else via Brewfile
brew bundle

# Install Android Studio, open this in browser: https://developer.android.com/studio

# Karabiner config
echo "Need to initialise the Karabiner Elements app. Do the ff:"
echo "1. Open the Karabiner Elements app"
echo "2. Grant the required permissions"
read -p "Once finished, press any key to proceed to copying over the karabiner.json file..." -n 1 -r
cp karabiner/karabiner.json ~/.config/karabiner/karabiner.json
