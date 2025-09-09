.PHONY: build
build:
	rm -rf build
	mkdir build
	cd build; cmake ..; cmake --build .

.PHONY: test
test:
	cd build; ./tests

.PHONY: run
run:
	cd build; ./main

.PHONY: clean
clean: 
	rm -rf build