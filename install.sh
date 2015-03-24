#!/usr/bin/env sh

git submodule update --init --recursive
#cd bundle/YouCompleteMe/ && ./install.sh --clang-completer
cd bundle/YouCompleteMe/ && ./install.sh
