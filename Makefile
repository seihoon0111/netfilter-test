all: netfilter-test

netfilter-test : netfilter-test.o
	g++ -o netfilter-test netfilter-test.o -lnetfilter_queue

netfilter-test.o : main.c
	g++ -c -o netfilter-test.o main.c

clean : 
	rm -f netfilter-test *.o

	
