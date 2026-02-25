#!/usr/bin/env bash
set -e

BUILD_DIR="${BUILD_DIR:-build}"
BUILD_TYPE="${BUILD_TYPE:-Debug}"

echo "Building with BUILD_TYPE=$BUILD_TYPE"

cmake -B "$BUILD_DIR" -G Ninja \
	-DCMAKE_BUILD_TYPE="$BUILD_TYPE" \
	-DCMAKE_CXX_STANDARD=17 \
	-DCMAKE_EXPORT_COMPILE_COMMANDS=ON

cmake --build "$BUILD_DIR"
