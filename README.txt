# C Static and Dynamic Libraries

This is a simple C project that demonstrates the usage of static and dynamic libraries. It consists of a main program (`hello.c`) and a static library (`libmylib.a`) for static linking, as well as a shared library (`libyourlib.so`) for dynamic linking.

## Project Structure

- `hello.c`: Main program that uses functions from both static and dynamic libraries.
- `mylib.h` and `mylib.c`: Header and source files for the static library.
- `yourlib.h` and `yourlib.c`: Header and source files for the dynamic library.
- `Makefile`: Makefile to build the project using make and gcc.
- `Dockerfile`: Dockerfile for building the project in a Docker container.


## Building the Project with make

Run the following command to build the project:
   ```bash
   make
   ```
This command will compile the source files, create the static library (libmylib.a), the dynamic library (libyourlib.so), and link the main program (hello) with both libraries.

After successfully building the project, you can run the hello executable:
   ```bash
   ./hello
   ```

To clean up the build artifacts, run:
   ```bash
   make clean
   ```

## Building the Project with Docker

BRun the following command to build the project using the GCC Docker image:
   ```bash 
   docker run -v $(pwd):/usr/src/app -w /usr/src/app gcc:latest make
   ```
