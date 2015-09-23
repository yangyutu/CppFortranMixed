CXX=g++
FC=gfortran

OBJ=testC.o testF.o testRead.o

test:$(OBJ)
	$(CXX) -o $@ $^ -lgfortran

%.o:%.f
	$(FC) -c -ffree-form $^

%.o:%.cpp
	$(CXX) -c $^


clean:
	rm *.o test
