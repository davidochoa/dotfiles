#!/bin/bash

source setup/init-functions.sh

### root files
symlink "$HOME" "$DOTFILES_ROOT" '.*'
