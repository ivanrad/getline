CFLAGS = -Wall

.PHONY: all clean

all: getline.o libgetline.so.1 libgetline.a

getline.o: getline.c getline.c
	$(CC) $(CFLAGS) -o getline.o -c -fPIC getline.c

libgetline.so.1: getline.o
	$(CC) $(CFLAGS) -o libgetline.so.1 -shared getline.o

libgetline.a: getline.o
	ar rcs libgetline.a getline.o

clean:
	rm -f libgetline.* *.o

