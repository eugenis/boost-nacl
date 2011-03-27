#!/bin/sh
./bootstrap.sh
PATH=$HOME/root/bin:$PATH ./bjam --prefix=$HOME/root/nacl64/ link=static --with-thread -d+2 --with-iostreams
PATH=$HOME/root/bin:$PATH ./bjam install --prefix=$HOME/root/nacl64/ link=static --with-thread -d+2 --with-iostreams

