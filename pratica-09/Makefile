CC=gcc
CFLAGS=-O2 -Wall -Wimplicit-function-declaration -ansi -lm -I.
DEPS = matriz.h
OBJ = main.o matriz.o
PROGS = main

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

clean:
	rm $(PROGS) *.o
