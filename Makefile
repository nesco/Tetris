CC = clang++
CFLAGS = -Wall -std=c++11
LFLAGS = 
EXEC = tetris

all: $(EXEC)

$(EXEC): %.o
	$(CC) -o $@ $^ $(LFLAGS)

%.o : %.c
	$(CC) -o $@ -c $< $(CFLAGS) 

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)
