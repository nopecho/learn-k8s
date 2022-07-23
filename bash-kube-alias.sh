#!/bin/bash

alias k="kubectl"

echo "alias k='kubectl'" >> ~/.bash_profile
echo "source <(kubectl completion bash)" >> ~/.bashrc
# shellcheck disable=SC1090
source ~/.bash_profile
