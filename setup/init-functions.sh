#!/bin/bash

info () {
  printf "\r  [ \033[00;34m>>\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

symlink () {
  if [ ! "$1" ]; then
    fail "missing destination directory"
    return
  fi

  if [ ! "$2" ]; then
    fail "missing source directory"
    return
  fi

  if [ ! "$3" ]; then
    fail "missing finding rule"
    return
  fi

  destinationDir=$1
  sourceDir=$2
  findFileName=$3

  for src in $(find -H "$sourceDir" -maxdepth 1 -name "$findFileName")
  do
    sourceBase="$(basename "${src}")"
    dst="$destinationDir/$sourceBase"

    # Go to next if it is source directory
    if [ "$src" == "$sourceDir" ]; then
      continue
    fi

    # Make sure there is nothing in the destination
    if [ -d "$dst" ] || [ -h "$dst" ] || [ -f "$dst" ]; then
      rm -rf "$dst"
    fi

    ln -s "$src" "$dst"
    success "\033[0;33mlinked\033[0m  $sourceBase \033[0;33m→\033[0m $dst"
  done
}
