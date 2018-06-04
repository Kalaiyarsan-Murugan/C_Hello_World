# https://www.cs.swarthmore.edu/~newhall/unixhelp/howto_makefiles.html

CC	=	gcc
CFLAGS	=	-Wall	-fPIC
default:	dev

dev:	hello.o
	$(CC)	$(CFLAGS)	-o hello	hello.o	-L.	-lm

hello.o:	hello.c
	$(CC)	$(CFLAGS)	-c hello.c

