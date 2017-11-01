CC=clang++-libc++
CFLAGS=-Wall -std=c++14
LDFLAGS=

SOURCES=main.cpp test.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hello

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS)  -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -c


clean:
	rm *.o $(EXECUTABLE)


run:
	./$(EXECUTEABLE)
