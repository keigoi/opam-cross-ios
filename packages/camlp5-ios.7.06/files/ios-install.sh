#!/bin/sh
set -e

make install

mkdir -p `opam var prefix`/ios-sysroot/lib/camlp5
cp etc/META `opam var prefix`/ios-sysroot/lib/camlp5
