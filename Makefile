.PHONY: clean

cubic_eigen: cubic_eigen.cpp
	g++ --std=c++11 -msse4 -O3 $^ -o $@

cubic_eigen.S: cubic_eigen.cpp
	g++ --std=c++11 -msse4 -O3 $^ -S -o $@

clean:
	rm -f cubic_eigen cubic_eigen.S

test: cubic_eigen
	./$^
