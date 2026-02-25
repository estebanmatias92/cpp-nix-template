#!/usr/bin/env bash
set -e

BUILD_DIR="${BUILD_DIR:-build}"

if [ -d "$BUILD_DIR" ]; then
	rm -rf "$BUILD_DIR"
	echo "Cleaned $BUILD_DIR/"
else
	echo "Nothing to clean (no $BUILD_DIR/ found)"
fi
