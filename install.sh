#!/bin/bash

BGREEN=$'\033[1;32m'
RESET=$'\033[0m'
DIM=$'\033[0;2m'
BREAK="– – –"

BADSF=$'fdsa'

function begin() {
  echo "$DIM$BREAK$RESET"
  echo "$BGREEN$1$RESET"
  echo
  sleep 0.1
  start=$SECONDS
}

function end() {
  echo
  echo "${RESET}⏳ Took $((SECONDS - start))s."
}

begin "Cloning main repo into ~/.config..."
cd ~/.config && git clone https://github.com/lce4113/nvim.git
end

begin "Cloning COC into ~/.config..."
git clone https://github.com/lce4113/coc.git
end

begin "Installing Neovim..."
brew install neovim --HEAD
end

begin "Installing Lazygit..."
brew install lazygit
end

begin "Installing Plugins..."
nvim -c "PlugInstall | qa\!"
end

echo "$DIM$BREAK$RESET"
