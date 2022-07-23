#!/bin/bash

alias k="kubectl"

echo "alias k='kubectl'" >> ~/.bash_profile
# shellcheck disable=SC1090
source ~/.bash_profile

echo "alias k='kubectl'" >> ~/.zshrc
# shellcheck disable=SC1090
source ~/.zshrc

