#!/usr/bin/env bash
set -e

BUILD_DIR="${BUILD_DIR:-build}"
EXECUTABLE="$BUILD_DIR/main"

if [ ! -f "$EXECUTABLE" ]; then
	echo "Error: Executable not found. Run 'make build' first."
	exit 1
fi

"$EXECUTABLE" "$@"
