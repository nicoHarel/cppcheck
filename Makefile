SRCS=CheckBufferOverrun.cpp  CheckClass.cpp  CheckHeaders.cpp  CheckMemoryLeak.cpp  CheckOther.cpp  CommonCheck.cpp  Statements.cpp  test.cpp  tokenize.cpp
OBJS=$(SRCS:%.cpp=%.o)
	

%.o:	%.cpp
	g++ -Wall -pedantic -I. -o $@ -c $^

all:	${OBJS} main.o
	g++ -o cppcheck $^
test:	${OBJS} TestTok.o
	g++ -o cppcheck_test $^
clean:
	rm -f *.o cppcheck_test cppcheck
