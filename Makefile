###########################################################################
# @file   Makefile
#
# @date   Oct 26, 2011
# @author WangLiang
# @email  WangLiangCN@live.com
#
# @brief  Make rules for Memory pool.
###########################################################################

CC = gcc
CFLAGS = -Wall -std=c99 -O2 -g
TARGET = ./memoryPoolTester
SUBDIR = Testers FABMemoryPool FALMemoryPool FUBMemoryPool VABMemoryPool VALMemoryPool VUBMemoryPool VULMemoryPool FULMemoryPool
SOURCES = $(wildcard *.c) $(shell find $(SUBDIR) -name '*.c')
OBJS = $(patsubst %.c, %.o, $(SOURCES))

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)
clean:
	rm $(OBJS) $(TARGET) -rf
