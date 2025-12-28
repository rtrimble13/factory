# Contributing to Factory

Thank you for your interest in contributing to the Factory project!

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/YOUR_USERNAME/factory.git`
3. Create a feature branch: `git checkout -b feature/your-feature-name`
4. Make your changes
5. Test your changes
6. Submit a pull request

## Development Setup

### Prerequisites
- CMake 3.14 or higher
- C++20 compatible compiler (GCC 10+, Clang 10+, MSVC 2019+)
- Git

### Building
```bash
cmake -S . -B build
cmake --build build
```

### Running Tests
```bash
cd build
ctest --output-on-failure
```

## Code Standards

### Style Guide
Please follow the project's style guide documented in [docs/style.md](docs/style.md).

Key points:
- Use C++20 features
- Follow the existing code style
- Use 4 spaces for indentation
- Maximum line length of 100 characters
- Use `clang-format` for automatic formatting

### Code Formatting
Format your code before committing:
```bash
clang-format -i src/**/*.cpp include/**/*.hpp
```

### Testing
- Add unit tests for new features
- Ensure all tests pass before submitting
- Tests use Catch2 framework

### Documentation
- Update documentation for new features
- Add examples when appropriate
- Include comments for complex logic
- Use Doxygen-style comments for public API

## Commit Messages

Write clear, concise commit messages:
- Use the imperative mood ("Add feature" not "Added feature")
- First line should be 50 characters or less
- Add a blank line before detailed description
- Reference issues when applicable

Example:
```
Add factor analysis estimation

Implement basic factor analysis with maximum likelihood estimation.
Includes unit tests and example program.

Fixes #123
```

## Pull Request Process

1. Update documentation to reflect changes
2. Add tests for new functionality
3. Ensure all tests pass
4. Update README.md if needed
5. Submit pull request with clear description

### PR Description Template
```
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing
Description of testing performed

## Checklist
- [ ] Code follows style guide
- [ ] Tests added/updated
- [ ] Documentation updated
- [ ] All tests pass
```

## Code Review

All submissions require review. We aim to:
- Review PRs within 3-5 days
- Provide constructive feedback
- Maintain high code quality

## Dependency Management

Dependencies are managed via CMake FetchContent. See [docs/dependencies.md](docs/dependencies.md) for details.

When adding new dependencies:
1. Justify the need for the dependency
2. Ensure it's compatible with the MIT license
3. Add to CMakeLists.txt with specific version
4. Document in docs/dependencies.md

## Questions?

Feel free to open an issue for questions or discussions about contributing.

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
