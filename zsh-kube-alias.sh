#!/bin/zsh

alias k="kubectl"

echo "alias k='kubectl'" >> ~/.zshrc
echo '[[ $commands[kubectl] ]] && source <(kubectl completion zsh)' >> ~/.zshrc
# shellcheck disable=SC1090
source ~/.zshrc


