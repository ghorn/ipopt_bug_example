PROG = cpp_example

OBJS =  cpp_example.o \
	MyNLP.o

CXX = g++
CXXFLAGS = $(shell pkg-config --cflags ipopt)
CXXLDFLAGS = $(shell pkg-config --libs ipopt)

all: $(PROG)

$(PROG): $(OBJS)
	$(CXX) $(CXXLDFLAGS) $(OBJS) -o $@ $(LIBS)

clean:
	rm -f $(PROG) $(OBJS)

.cpp.o:
	$(CXX) $(CXXFLAGS) -c -o $@ $<
