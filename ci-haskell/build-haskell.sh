#!/bin/bash

command=$1

if [ "$command" = "" ]; then
  >&2 echo "a build command is required"
  exit 1
fi

echo "running '$1' in '$BUILD_DIR'"

cd $BUILD_DIR
stack $command




