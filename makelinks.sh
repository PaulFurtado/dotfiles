#!/bin/bash

# Links all dotfiles from this directory to the directories where they belong
# on the system.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/vimrc ~/.vimrc


