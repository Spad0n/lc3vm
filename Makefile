CC = gcc
CFLAGS = -g -Wall -Wextra
LDFLAGS = -g

all: lc3vm

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

lc3as: lex.lc3.o symbol.o
	$(CC) $(LDFLAGS) -o lc3as $^

lc3vm: lc3vm.o lc3as
	$(CC) $(LDFLAGS) -o $@ $<

clean:
	rm -f *.o *~

clear: clean
	rm -f lc3vm
	rm -f lc3as
