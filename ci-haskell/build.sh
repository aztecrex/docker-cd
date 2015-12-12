#!/bin/bash

here=$(dirname $(readlink -f $0))

docker build -t aztecrex/ci-haskell .


