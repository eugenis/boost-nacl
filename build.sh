#!/bin/sh
set -e -x

ROOT=${NACL_TOOLCHAIN_ROOT:-$HOME/root/nacl-sdk}

./bootstrap.sh
LIBS="--with-thread --with-iostreams --with-regex --with-serialization --with-system"
PATH=$ROOT/bin:$PATH ./bjam --prefix=$ROOT/nacl64/usr link=static -d+2 ${LIBS}
PATH=$ROOT/bin:$PATH ./bjam install --prefix=$ROOT/nacl64/usr link=static ${LIBS}

