#!/bin/bash
# Build script for factory project

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Building Factory...${NC}"

# Default build directory
BUILD_DIR="${BUILD_DIR:-build}"

# Parse arguments
BUILD_TYPE="${BUILD_TYPE:-Release}"
CLEAN=false

while [[ $# -gt 0 ]]; do
    case $1 in
        --debug)
            BUILD_TYPE="Debug"
            shift
            ;;
        --clean)
            CLEAN=true
            shift
            ;;
        --help)
            echo "Usage: $0 [options]"
            echo "Options:"
            echo "  --debug    Build in Debug mode (default: Release)"
            echo "  --clean    Clean build directory before building"
            echo "  --help     Show this help message"
            exit 0
            ;;
        *)
            echo -e "${RED}Unknown option: $1${NC}"
            exit 1
            ;;
    esac
done

# Clean if requested
if [ "$CLEAN" = true ]; then
    echo -e "${YELLOW}Cleaning build directory...${NC}"
    rm -rf "$BUILD_DIR"
fi

# Create build directory
mkdir -p "$BUILD_DIR"

# Configure
echo -e "${GREEN}Configuring...${NC}"
cmake -S . -B "$BUILD_DIR" -DCMAKE_BUILD_TYPE="$BUILD_TYPE"

# Build
echo -e "${GREEN}Building...${NC}"
cmake --build "$BUILD_DIR" -j$(nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 4)

echo -e "${GREEN}Build complete!${NC}"
echo -e "Executables:"
echo -e "  CLI: ${YELLOW}$BUILD_DIR/src/fm${NC}"
echo -e "  Tests: ${YELLOW}$BUILD_DIR/tests/test_placeholder${NC}"
echo -e "  Examples: ${YELLOW}$BUILD_DIR/examples/example_basic${NC}"
