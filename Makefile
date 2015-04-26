CC=gcc
CFLAGS= -Wall -g
LDFLAGS=

OBJS= main.o input.o
EXE = Editor

.PHONY: clean install depend

$(EXE): $(OBJS)
	$(CC) $(CLFAGS) -o $(EXE) $(OBJS)

$(OBJS): Makefile

depend:
	$(CC) -MM $(OBJS:.o=.c) > .depend
	make

.depend:
	touch .depend
	make depend

clean:
	rm -f $(OBJS) $(EXE) .depend

install: $(EXE)
	cp $(EXE) /usr/bin/
	chmod 555 /usr/bin/$(EXE)

include .depend
