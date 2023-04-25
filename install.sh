#!/bin/bash

# Install debian packages
sudo apt install stow
sudo apt install zsh
sudo apt instal tmux 
sudo apt install curl
sudo apt install cowsay
sudo apt install fortune

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Set zsh as the default shell 
chsh -s $(which zsh)

# Stow everything (use adopt then git reset to overwrite previous configs)
stow --adopt bash
stow --adopt git
stow --adopt tmux
stow --adopt zsh

git reset --hard
