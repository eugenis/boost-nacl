#!/bin/sh
./bootstrap.sh
PATH=$HOME/root/nacl-sdk/bin:$PATH ./bjam --prefix=$HOME/root/nacl-sdk/nacl64/ link=static --with-thread -d+2 --with-iostreams
PATH=$HOME/root/nacl-sdk/bin:$PATH ./bjam install --prefix=$HOME/root/nacl-sdk/nacl64/ link=static --with-thread -d+2 --with-iostreams

