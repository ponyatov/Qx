CWD    = $(CURDIR)
MODULE = $(notdir $(CWD))

NOW = $(shell date +%d%m%y)
REL = $(shell git rev-parse --short=4 HEAD)

.PHONY: all
all: ./$(MODULE)
	./$^

C = $(MODULE).cc
# H = $(MODULE).hh
./$(MODULE): $(C) $(H)
	$(CXX) $(CXXFLAGS) -o $@ $(C) $(L)
