#!/bin/bash

source setup/_func-print.sh

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

  for src in $(find -H "$sourceDir" -maxdepth 1 -name "$findFileName" -not -name .DS_Store -not -name .git -not -name .gitignore)
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
