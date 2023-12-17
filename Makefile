CC = gcc
CFLAGS = -Wall -Wextra

LIB_SOURCES = calculator.c
LIB_OBJECTS = $(LIB_SOURCES:.c=.o)
LIB_NAME = libcalculator.a

EXECUTABLE = calculator
MAIN_SOURCES = main.c

all: $(LIB_NAME) $(EXECUTABLE)

$(LIB_NAME): $(LIB_OBJECTS)
	ar rcs $(LIB_NAME) $(LIB_OBJECTS)

$(EXECUTABLE): $(MAIN_SOURCES) $(LIB_NAME)
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $(MAIN_SOURCES) -L. -lcalculator

clean:
	rm -f $(LIB_NAME) $(LIB_OBJECTS) $(EXECUTABLE)
