CPP=g++

PREFLAGS=-std=c++11 -g -O0 -DNDEBUG -fopenmp -I ~/include -L ~/lib

POSFLAGS=-lsdsl -ldivsufsort -ldivsufsort64

BINS=time_allTopoRels_byQueriesFile\
		TopoRel_GST_build\
		TopoRel_GST_size\
		TopoRel_GST_test\
		TopoRel_GST_time\
		TopoRel_Naive_size\
		TopoRel_Naive_test\
		TopoRel_Naive_time

OBJECTS=TopoRel_GST.o\
		TopoRel_Naive.o

%.o: %.cpp
	$(CPP) $(PREFLAGS) -c $< -o $@ $(POSFLAGS)

#all: clean bin
all: bin

bin: $(OBJECTS) $(BINS)

time_allTopoRels_byQueriesFile:
	$(CPP) $(PREFLAGS) -o time_allTopoRels_byQueriesFile time_allTopoRels_byQueriesFile.cpp $(OBJECTS) $(POSFLAGS)

TopoRel_GST_build:
	$(CPP) $(PREFLAGS) -o TopoRel_GST_build TopoRel_GST_build.cpp $(OBJECTS) $(POSFLAGS)

TopoRel_GST_size:
	$(CPP) $(PREFLAGS) -o TopoRel_GST_size TopoRel_GST_size.cpp $(OBJECTS) $(POSFLAGS)

TopoRel_GST_test:
	$(CPP) $(PREFLAGS) -o TopoRel_GST_test TopoRel_GST_test.cpp $(OBJECTS) $(POSFLAGS)

TopoRel_GST_time:
	$(CPP) $(PREFLAGS) -o TopoRel_GST_time TopoRel_GST_time.cpp $(OBJECTS) $(POSFLAGS)

TopoRel_Naive_size:
	$(CPP) $(PREFLAGS) -o TopoRel_Naive_size TopoRel_Naive_size.cpp $(OBJECTS) $(POSFLAGS)

TopoRel_Naive_test:
	$(CPP) $(PREFLAGS) -o TopoRel_Naive_test TopoRel_Naive_test.cpp $(OBJECTS) $(POSFLAGS)

TopoRel_Naive_time:
	$(CPP) $(PREFLAGS) -o TopoRel_Naive_time TopoRel_Naive_time.cpp $(OBJECTS) $(POSFLAGS)

clean:
	rm -f $(BINS) $(OBJECTS)