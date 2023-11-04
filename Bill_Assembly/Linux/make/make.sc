#!/bin/bash

clear
as main.asm -o main.o
ld main.o -o main
./main
echo $?
rm main.o
rm ./main
