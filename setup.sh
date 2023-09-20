#!/usr/bin/env bash

# colors
COLOR_RESET='\033[0m'
COLOR_FG_RED='\033[0;31m'
COLOR_FG_GREEN='\033[0;32m'
COLOR_FG_YELLOW='\033[0;33m'

## Homebrew
# https://brew.sh

if ! command -v brew &> /dev/null
then
  echo -e "${COLOR_FG_GREEN}install${COLOR_RESET} Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo -e "${COLOR_FG_YELLOW}skip${COLOR_RESET} Homebrew (already installed)"
fi
