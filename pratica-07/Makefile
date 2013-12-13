# Makefile Tonussi

CC=gcc
CFLAGS=-O2 -Wall -ansi -lm -I.
DEPS = sol_triang.h
OBJ = sol_triang.o soluc.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

sol_triang: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)


# Makefile Dovicchi

# CC = gcc
# CFLAGS = -O2 -ansi -Wall
# LIBDIR = -L/usr/local/lib
# LIBS = -lm

# INC = -I./ -I/usr/local/include

# PROGS = fatorial

# all: $(PROGS)

# fatorial: fat.c main.c
# $(CC) $(CFLAGS) $(INC) $(LIBDIR) -o $@ $? $(LIBS)

# clean:
# rm -f *~ *.core *.o *.dat $(PROGS)
