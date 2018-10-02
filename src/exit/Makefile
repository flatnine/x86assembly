AS=/usr/bin/as
LD=/usr/bin/ld

all: exit exit.o

exit.o:
	$(AS) exit.s -o exit.o

exit: exit.o
	$(LD) exit.o -o exit

clean:
	rm exit.o exit

.PHONY: all
