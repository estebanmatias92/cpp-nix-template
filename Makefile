BUILD_TYPE ?= Debug
BUILD_DIR ?= build
EXECUTABLE := $(BUILD_DIR)/main

.PHONY: build run clean all help

help:
	@echo "Available targets:"
	@echo "  make build            - Build the project (use BUILD_TYPE=Release)"
	@echo "  make run              - Run the executable"
	@echo "  make clean            - Remove build artifacts"
	@echo "  make all              - Clean and build"
	@echo ""
	@echo "Environment variables:"
	@echo "  BUILD_TYPE=Debug|Release"

build:
	@./build.sh

run: build
	@./run.sh

clean:
	@./clean.sh

all: clean build
