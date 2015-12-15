#!/bin/bash

command="$1"

if [ "$command" = "shell" ]; then
  /bin/bash -l
  exit 0
elif [ "$command" = "" ]; then
  >&2 echo "Usage: $0 command"
  exit 1
else
  git clone $command target
  cd target
  stack setup && stack test
fi
