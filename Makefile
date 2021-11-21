CC=gcc

thread1:	thread1.o 
	$(CC) thread1.o  -o $@ -pthread

thread1.o:	thread1.c
	$(CC) -Wall -c $< -o $@ -pthread

clean:
	rm -f thread1.o *.o core *~