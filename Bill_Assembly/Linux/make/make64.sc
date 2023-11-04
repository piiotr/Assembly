#!/bin/bash

clear
nasm -g -f elf64 -F dwarf main.asm -o main.o
ld main.o -o main
./main
echo $?
rm main.o
rm ./main
