all: time

time: main.c ipc.o time.o
	$(CC) -o time main.c ipc.o time.o

ipc.o: ipc.c
	$(CC) -c ipc.c -o ipc.o	
	
time.o: time.c
	$(CC) -c time.c -o time.o

clear:
	rm -f *.0
	@echo "All clean!"