#!/bin/bash

set -e

$CXX -c -o throw.o -O0 -ggdb throw.cpp
$CXX -c -o mycppabi.o -O0 -ggdb mycppabi.cpp
$CC -c -o main.o -O0 -ggdb main.c
$CC main.o mycppabi.o throw.o -o app

./app

