.PHONY:clean
CC=g++
CFLAGS=-Wall -g
BIN=final_exe_name
OBJS=Condition.o Thread.o ....
$(BIN):$(OBJS)
    $(CC) $(CFLAGS) $^ -o $@ -lpthread
%.o:%.cpp
    $(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f *.o $(BIN)
