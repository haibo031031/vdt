#C compiler
CC = g++

SRC = app.cpp
EXE = app.${foo}

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -lOpenCL  -fopenmp 

errmsg: $(SRC)
	$(CC) $(SRC) -o $(EXE) -lOpenCL -fopenmp -D ERRMSG 
	
clean: $(SRC)
	rm -f $(EXE) *~
