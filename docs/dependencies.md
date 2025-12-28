# Dependencies

This project uses CMake FetchContent to automatically download and build dependencies.

## Core Dependencies

### fmt (10.2.1)
- **Purpose**: Fast and safe formatting and logging
- **License**: MIT
- **Repository**: https://github.com/fmtlib/fmt

### nlohmann/json (3.11.3)
- **Purpose**: JSON serialization and deserialization
- **License**: MIT
- **Repository**: https://github.com/nlohmann/json

### CLI11 (2.4.1)
- **Purpose**: Command-line argument parsing
- **License**: BSD-3-Clause
- **Repository**: https://github.com/CLIUtils/CLI11

## Testing Dependencies

### Catch2 (3.5.2)
- **Purpose**: Unit testing framework
- **License**: BSL-1.0
- **Repository**: https://github.com/catchorg/Catch2

## Dependency Management

All dependencies are fetched automatically during the CMake configuration step. No manual installation is required.

On the first build, CMake will:
1. Download the specified versions of each dependency
2. Build them as part of the project
3. Cache them for future builds

To update dependencies, modify the `GIT_TAG` values in `CMakeLists.txt` and reconfigure.
