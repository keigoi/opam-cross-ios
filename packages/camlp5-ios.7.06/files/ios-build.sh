#!/bin/sh
set -e

# remove default OCaml from the path and add OCaml-iOS instead
PATH=$(echo $PATH | sed -e "s|$(opam var bin):||g")
PATH=$(echo $PATH | sed -e "s|$(opam var prefix)/ios-sysroot/bin:||g")
export PATH=`opam var prefix`/ios-sysroot/bin:$PATH

./configure --prefix $(opam var prefix)/ios-sysroot
make -j8 world
make -j8 optlib
