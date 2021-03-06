.PHONY: all
all: cppcheck cmake.bld prebuild build test

.PHONY: prebuild
prebuild: cmake.bld
	cd cmake.bld && cmake ..

.PHONY: build
build: cmake.bld
	cd cmake.bld && make

.PHONY: cppcheck
cppcheck:
	cppcheck src
	cppcheck app

.PHONY: test
test: build
	cd cmake.bld && ./runTests

cmake.bld:
	mkdir cmake.bld

.PHONY: clean
clean:
	rm -rf ./cmake.bld
