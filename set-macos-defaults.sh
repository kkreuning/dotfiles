#!/usr/bin/env bash

set -euo pipefail


echo "Changing caps-lock key to command key"
# TODO

echo "Changing Hot Corners  TL and TR to show mission control"
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0
defaults write com.apple.dock wvous-tr-corner -int 2
defaults write com.apple.dock wvous-tr-modifier -int 0
