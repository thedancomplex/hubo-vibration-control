default: all

CFLAGS := -I./include -g --std=gnu99
CC := g++

BINARIES := hubo-vibration-control
all : $(BINARIES)

LIBS := -lach 

hubo-vibration-control: src/hubo-vibration-control.cpp
	$(CC) -o $@ $< $(LIBS)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f $(BINARIES) src/*.o
