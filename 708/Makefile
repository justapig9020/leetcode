all: main

main: main.c
	gcc -o main main.c

test: main
	objdump -M intel -d ./main > main.asm
	./main

clean:
	rm -f main main.asm
