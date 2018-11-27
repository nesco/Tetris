CC = clang++
CFLAGS = -Wall -std=c++11
LFLAGS = 
EXEC = tetris
OBJ = %.o
SRC= $(wildcard *.cpp)
OBJ= $(SRC:.cpp=.o)
FRAMEWORKS = -framework sfml-window -framework sfml-graphics -framework sfml-system

all: $(EXEC)

$(EXEC) : $(OBJ)
	$(CC) $(FRAMEWORKS) -o $@ $^ $(LFLAGS)

%.o : %.cpp
	$(CC) -o $@ -c $< $(CFLAGS) 

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)
