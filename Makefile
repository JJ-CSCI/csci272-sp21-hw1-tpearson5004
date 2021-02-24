CXX = g++
CXX_FLAGS = -I. -std=c++17 -Wfatal-errors -Wall -Wextra -Wpedantic -Wconversion -Wshadow

TMPFILE=tmpimg
GEOM?=
VARS?=

ifdef GEOM
VARS += -V geometry:"$(GEOM)"
endif

PRJ = main
SRC = $(PRJ).cpp
BIN = a.out

.PHONY : all solution imgpdf sol2pdf clean test grade

all: $(BIN)

test.o: test.cpp
	$(CXX) $(CXX_FLAGS) test.cpp -c

binomial.o: binomial.cpp
	$(CXX) $(CXX_FLAGS) binomial.cpp -c

$(BIN): test.o binomial.o $(PRJ).o
	g++ $(CXX_FLAGS) test.o binomial.o $(SRC)

clean:
	@rm $(PRJ)-t.pdf $(TMPFILE)*.png || true
	rm $(BIN) *.o | true

test: $(BIN)
	./$(BIN)

solution: sol2pdf imgpdf clean

imgpdf:
	pdftoppm $(PRJ)-t.pdf $(TMPFILE) -png
	convert $(TMPFILE)*.png $(PRJ).pdf

sol2pdf:
	enscript --color=1 -C -Ecpp -fCourier9 -o - *.sol.* | ps2pdf - $(PRJ)-t.pdf

b1: $(BIN)
	./$(BIN) -c b1

b2: $(BIN)
	./$(BIN) -c b2

b3: $(BIN)
	./$(BIN) -c b3

b4: $(BIN)
	./$(BIN) -c b4

b5: $(BIN)
	./$(BIN) -c b5

b6: $(BIN)
	./$(BIN) -c b6

b7: $(BIN)
	./$(BIN) -c b7

b8: $(BIN)
	./$(BIN) -c b8

b9: $(BIN)
	./$(BIN) -c b9

b10: $(BIN)
	./$(BIN) -c b10

b11: $(BIN)
	./$(BIN) -c b11

b12: $(BIN)
	./$(BIN) -c b12

b13: $(BIN)
	./$(BIN) -c b13

b14: $(BIN)
	./$(BIN) -c b14

b15: $(BIN)
	./$(BIN) -c b15

b16: $(BIN)
	./$(BIN) -c b16

