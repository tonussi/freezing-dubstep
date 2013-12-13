CC=gcc
CFLAGS=-O2 -Wall -ansi -lm -I.
DEPS = local.h
OBJ = sol_triang.o soluc.o
PROGS = sol_triang

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

sol_triang: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

clean:
	rm $(PROGS) *.o
