#!/usr/bin/env bash

# colors
COLOR_RESET='\033[0m'
COLOR_FG_RED='\033[0;31m'
COLOR_FG_GREEN='\033[0;32m'
COLOR_FG_YELLOW='\033[0;33m'

## Homebrew
# To be able to install a lot of this other stuff
# https://brew.sh

if [ -f /opt/homebrew/bin/brew ] || [ -f /usr/local/bin/brew ]
then
  echo -e "${COLOR_FG_YELLOW}skip${COLOR_RESET} Homebrew (already installed)"
else
  echo -e "${COLOR_FG_GREEN}install${COLOR_RESET} Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# setup shell envs for PATH and such, so `brew` command is available

if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -f /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi


## Bash
# Because the default bash on mac is 3.x, and I need 4.x for associative arrays and such
# TODO: I think there is more to configure this as my default shell?

brew install bash


## MacVim
# TODO

brew install macvim


## Git
# Because the default git on mac is old

brew install git


## Firefox
# Because I like it better than Chrome and Safari

brew install --cask firefox
