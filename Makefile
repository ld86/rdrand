all: main
main: rdrand.o
rdrand:
	as rdrand.s -o rdrand.o
clean:
	rm -rf *.o main
