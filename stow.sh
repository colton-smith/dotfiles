#!/bin/bash

# Stow everything (use adopt then git reset to overwrite previous configs)
stow --adopt bash
stow --adopt git
stow --adopt tmux
stow --adopt zsh

git reset --hard
