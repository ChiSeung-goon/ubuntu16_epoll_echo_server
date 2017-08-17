TARGET=echo_server

SOURCES=echo_server.cpp
OBJECTS=${SOURCES:.cpp=.o}

CC=g++
CPPFLAGS=-I/usr/local/include
LDFLAGS=-L/usr/local/lib
LDLIBS=-lboost_regex

all:${TARGET}
${TARGET}:${OBJECTS}
	${CC} -o $@ $^ ${LDFLAGS} ${LDLIBS}

%.cpp.%.o:
	${CC} -c ${CPPFLAGS} ${CXXFLAGS} $<

clean:
	rm -rf ${TARGET} ${OBJECTS} core.*

cleanlog:
	cd ./logs ; rm *

