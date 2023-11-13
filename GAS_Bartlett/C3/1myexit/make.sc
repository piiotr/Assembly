#! bin/bash

as main.s -o main.o
ld main.o -o main
./main
echo $?
rm -f main.o
rm -f main