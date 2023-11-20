CC = gcc
CFLAGS = -Wall -Wextra

# Default target
all: hello

# Compile mylib.c to create a static library (libmylib.a)
mylib.o: mylib.c mylib.h
	$(CC) $(CFLAGS) -c $< -o $@
	ar rcs libmylib.a $@

# Compile yourlib.c to create a shared library (libyourlib.so)
libyourlib.so: yourlib.c yourlib.h
	$(CC) -shared -fPIC $< -o $@

# Compile hello.c and link it statically with libmylib.a and dynamically with libyourlib.so
hello: hello.c mylib.o libyourlib.so
	$(CC) $(CFLAGS) $< -L. -lmylib -lyourlib -o $@

# Clean up
clean:
	rm -f mylib.o libmylib.a libyourlib.so hello
