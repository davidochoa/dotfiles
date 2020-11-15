#!/bin/bash

source setup/_func-symlink.sh

### root files
symlink "$HOME" "$DOTFILES_ROOT" '.*'
