all: simple_fuse
simple_fuse: simple_fuse.o
	gcc simple_fuse.o utils.o -o u_fs -Wall -D_FILE_OFFSET_BITS=64 -g -pthread -lfuse -lrt -ldl
simple_fuse.o:global.h simple_fuse.c
	gcc  -Wall -D_FILE_OFFSET_BITS=64 -g   -c -o simple_fuse.o simple_fuse.c
.PHONY : all
clean :
	rm  -f simple_fuse simple_fuse.o
