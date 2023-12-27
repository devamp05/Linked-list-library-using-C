#GROUP 15
# Preet Jain / Devam Punitbhai Patel
# pvj636 / dns682
# Student number: 11270494/ 11316715
#
# 
CC = gcc
CCFLAGS = -g -Wextra -z noexecstack
CPPFLAGS = -std=gnu90 -Wall -pedantic -g -Wextra

OBJPATH = build/obj/
BINPATH = build/bin/
LIBPATH = build/lib/
TARGET = liblist.a

all: build $(TARGET) cp

build:
	mkdir -p ./build/obj
	mkdir -p ./build/lib
	mkdir -p ./build/bin

liblist.a: list.o list_adders.o list_movers.o list_removers.o
	ar -r ${LIBPATH}liblist.a ${OBJPATH}list.o ${OBJPATH}list_adders.o \
	${OBJPATH}list_movers.o ${OBJPATH}list_removers.o

list.o: list.c list.h
	$(CC) $(CPPFLAGS) -c list.c -o $(OBJPATH)list.o -I ./

list_adders.o: list_adders.c list.h
	$(CC) $(CPPFLAGS) -c list_adders.c -o $(OBJPATH)list_adders.o -I ./

list_movers.o: list_movers.c list.h
	$(CC) $(CPPFLAGS) -c list_movers.c -o $(OBJPATH)list_movers.o -I ./

list_removers.o: list_removers.c list.h
	$(CC) $(CPPFLAGS) -c list_removers.c -o $(OBJPATH)list_removers.o -I ./

cp:
	cp ./build/lib/* .

clean:
	rm -fr ./build *.a
