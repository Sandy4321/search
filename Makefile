CC=g++
CFLAGS= -Wall -Werror -Wfatal-errors

all: index

index: index.cpp 
	$(CC) $(CFLAGS) index.cpp -o index.o 
	
run:
	./index.o karenina_utf.html karenina.html_index query.html

test_memory:
	valgrind ./index.o karenina.html karenina.html_index
	
clean:
	find . -name \*.o -delete
	find . -name \*~ -delete
	find . -name \*.backup -delete
	
	find $(CDIR) -name \*.o -delete
	find $(CDIR) -name \*~ -delete
	find $(CDIR) -name \*.backup -delete

