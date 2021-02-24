#change compiler and opt flags as neccesary
opt := -O3
CC := gcc
project := hw3$(CC)$(opt)

objs  = main.o
files = main.c

CFLAGS := -std=c11 -lm

.PHONY: all

all: $(project)

$(project): $(objs)
	$(CC) $(opt) $(CFLAGS) -o $(project) $(objs)

.PHONY: clean
clean:
	rm -f $(project)
	rm -f $(objs)
