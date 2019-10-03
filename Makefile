# Modify these for your project
PROJECT_DIR=code/assignment-shading
EXECUTABLE_FILE=assignment-shading

# Leave these alone
DOCKER_IMAGE=kevincharm/opengl:latest
DOCKER_SH=docker run -it --rm \
	-v `pwd`:/home/user/work \
	-w /home/user/work \
	--security-opt seccomp=unconfined \
	$(DOCKER_IMAGE) /bin/bash -c

.PHONY: build run clean

# Host rules
build:
	$(DOCKER_SH) "cat /etc/os-release && make _build"

run:
	./run.sh -r --env="APP=/home/user/work/$(PROJECT_DIR)/build/$(EXECUTABLE_FILE)"

clean:
	rm -rf $(PROJECT_DIR)/build

# Container rules
# You may need to modify this build rule for your project
_build:
	cd $(PROJECT_DIR) && \
		rm -rf build && \
		mkdir build && \
		cd build && \
		cmake .. && \
		make
