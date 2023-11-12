all: main

main: main.o
	aarch64-linux-gnu-ld main.o -o main


main.o: main.asm
	aarch64-linux-gnu-as -g -a main.asm -o main.o > main.lst

clean:
	rm -f ./main.o || true
	rm -f ./main.lst || true
	rm -f ./main || true

