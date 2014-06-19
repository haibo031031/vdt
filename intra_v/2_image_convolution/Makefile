#C compiler
CC = g++
SRC = app.cpp
EXE = app.${foo}

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -I$(INC) -L$(LIB)  -lOpenCL  -fopenmp

clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo *~ 
