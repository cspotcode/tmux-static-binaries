#!/usr/bin/env bash
set -euo pipefail
shopt -s inherit_errexit

# if true ; then
#     # from tarball

#     version=3.1c
#     rm -r tmux-$version tmux-$version.tar.gz || true
#     wget https://github.com/tmux/tmux/releases/download/$version/tmux-$version.tar.gz
#     tar -xvzf ./tmux-$version.tar.gz
#     cd tmux-$version

# else

#     # from source
#     cd tmux

#     sh autogen.sh
# fi

# ./configure --enable-static
# make

# sudo apt install build-essential automake libevent-dev ncurses-dev bison flex

# git clean -xdf
# rm -rf tmux || true
# git submodule update --init --recursive

sudo apt install libevent-dev

cd tmux
git fetch
git checkout origin/master -- .github/travis

# BUILD=musl-static sh .github/travis/build.sh
BUILD=static sh .github/travis/build.sh
cp ./tmux ../dist/tmux
