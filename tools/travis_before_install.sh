#!/bin/bash

if [[ $(uname -s) = "Darwin" ]]; then
  echo "Darwin before install start"
  brew update
  # # brew install google-perftools
  # # brew install gflags
  # # brew install gcc48
  # # brew outdated google-perftools || brew upgrade google-perftools
  brew outdated gflags || brew upgrade gflags
  brew outdated glog || brew upgrade glog
  echo "Darwin before install end"
fi

if [[ $(uname -s) = "Linux" ]]; then
  echo "Linux before install start"
  # We need this to have g++4.8 available in apt
  # sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
  # sudo apt-get update -qq
  # sudo apt-get install gcc-4.8 -y
  echo "Linux before install end"
fi
