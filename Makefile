CC=cc
INPUT=main.o input.o

default: editor

editor: $(INPUT)
	$(CC) -o editor $(INPUT)	

main.o: main.c input.o utils.h
	$(CC) -c main.c

input.o: input.c
	$(CC) -c input.c

utils.h: types.h defs.h

clean:
	rm editor *.o

install:
	cp editor /usr/bin/
	chmod 555 /usr/bin/editor
