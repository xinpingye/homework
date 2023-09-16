demo:main.o f1.o f2.o
	gcc -o demo main.o f1.o f2.o

main.o:main.c f1.h
	gcc -c main.c -o main.o
f1.o:f1.c f1.h f2.h
	gcc -o f1.o -c f1.c
f2.o:f2.c f2.h f1.h
	gcc -o f2.o -c f2.c
clean:
	rm -f *.o demo
