# factory

A C++ library and command-line interface (CLI) for factor modeling.

## Project Goals

This project provides tools for:
- **Factor Analysis** - Extract and analyze factors from financial data
- **Risk Modeling** - Model portfolio and asset risk using factor models
- **Portfolio Construction** - Build portfolios using factor-based approaches

Factor models are essential for understanding asset returns, managing risk, and constructing optimal portfolios in quantitative finance.

## Build Instructions

This project uses CMake for building. Requirements:
- CMake 3.14 or higher
- C++20 compatible compiler (GCC 10+, Clang 10+, MSVC 2019+)
- Git (for automatic dependency fetching)
- Internet connection (first build only)

Dependencies are automatically downloaded and built using CMake FetchContent.

### Building from Source

```bash
# Configure the build
cmake -S . -B build

# Build the project
cmake --build build

# Optionally, install (requires appropriate permissions)
cmake --install build
```

### Build Targets

The build produces the following targets:
- `factory` - Static library for factor modeling
- `fm` - Command-line interface executable
- Unit test executables
- Example programs
- Benchmark programs

To run a specific example:
```bash
./build/examples/example_basic
```

## Usage

### Command-Line Interface

Run the CLI tool:

```bash
# After building
./build/src/fm --help
```

### Library Usage

Coming soon.

## Project Structure

```
factory/
├── include/fm/       # Public header files
├── src/              # Library and CLI implementation
│   ├── api/          # API interface
│   ├── cli/          # CLI implementation
│   ├── data/         # Data handling
│   ├── estimation/   # Model estimation
│   ├── io/           # Input/output operations
│   ├── models/       # Factor models
│   └── util/         # Utility functions
├── tests/            # Unit tests
│   ├── unit/         # Unit test suites
│   └── fixtures/     # Test data fixtures
├── examples/         # Example programs
├── benchmarks/       # Performance benchmarks
├── docs/             # Documentation
└── scripts/          # Build and utility scripts
```

## Contributing

Contributions are welcome! Code follows C++20 best practices.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
