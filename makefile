# TODO: Modify makefile so it's relatively crossplatform. "-lmingw32, -lGL" etc.
CC = gcc 
CF = -Wall -Wextra -Wmissing-prototypes -Wstrict-prototypes \
     -Wdeclaration-after-statement -Wmissing-declarations \
     -Wimplicit-function-declaration -std=c99 -pedantic \
     -Wshadow -Wdouble-promotion -Wconversion -Wformat \
     -Wformat-signedness -Wformat-extra-args \
     -Wpointer-arith -Wcast-qual
LF = -lmingw32 -lSDL2main -lSDL2 -lSDL2_image -lm
DF = -DDEBUG_MODE
INC = -Iinclude -Ilib/glad/include -Ilib/cglm/include
SRC = $(wildcard src/*.c) $(wildcard lib/glad/src/*.c) \
      $(wildcard lib/cglm/src/*.c)
 
all: $(SC)
	$(CC) -g $(CF) $(INC) $(SRC) $(DF) $(LF) 
