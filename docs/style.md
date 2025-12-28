# Factory Code Style Guide

## Overview

This project follows C++20 best practices with a style based on the Google C++ Style Guide with modifications for readability.

## Key Principles

1. **Modern C++**: Use C++20 features where appropriate
2. **Readability**: Code should be easy to read and understand
3. **Consistency**: Follow the established patterns in the codebase
4. **Safety**: Prefer safe constructs and avoid undefined behavior

## Formatting

### Indentation
- Use 4 spaces for indentation (not tabs)
- Continuation lines should be indented by 4 spaces

### Line Length
- Maximum line length: 100 characters
- Break long lines at logical points

### Braces
- Opening braces on the same line (K&R style)
- Always use braces for control structures, even single-line blocks

```cpp
if (condition) {
    doSomething();
}
```

### Spacing
- Space after control keywords: `if (`, `for (`, `while (`
- No space before function call parentheses: `function()`
- Space around binary operators: `a + b`, `x = y`
- Two spaces before trailing comments

## Naming Conventions

### Files
- Header files: `.hpp`
- Source files: `.cpp`
- File names use PascalCase: `FactorModel.hpp`

### Types
- Classes and structs: PascalCase
- Enums: PascalCase

```cpp
class FactorModel {
    // ...
};

enum class ModelType {
    Linear,
    Nonlinear
};
```

### Variables and Functions
- Variables: snake_case
- Functions: snake_case
- Member variables: snake_case with trailing underscore

```cpp
int factor_count;
double risk_value_;

void calculate_risk() {
    // ...
}
```

### Constants
- Constants: snake_case or UPPER_CASE for macros

```cpp
constexpr double pi = 3.14159;
const int max_factors = 10;
```

## Header Files

### Include Guards
Use `#pragma once` for header guards.

```cpp
#pragma once

namespace fm {
// ...
}
```

### Include Order
1. Related header (for .cpp files)
2. Project headers from `fm/`
3. Third-party library headers
4. Standard library headers

Groups separated by blank lines, alphabetically sorted within groups.

```cpp
#include "fm/FactorModel.hpp"

#include <fmt/core.h>
#include <nlohmann/json.hpp>

#include <string>
#include <vector>
```

## Code Organization

### Namespaces
- Use `namespace fm` for all project code
- Sub-namespaces for major components: `fm::models`, `fm::estimation`

```cpp
namespace fm {
namespace models {

class FactorModel {
    // ...
};

}  // namespace models
}  // namespace fm
```

### Classes
- Public members first, then protected, then private
- Group related methods together

```cpp
class FactorModel {
public:
    FactorModel();
    
    void fit();
    void predict();

private:
    void internal_helper();
    
    int factor_count_;
    std::vector<double> factors_;
};
```

## Comments

### Documentation Comments
Use Doxygen-style comments for public API:

```cpp
/// @brief Fits the factor model to data
/// @param data Input data matrix
/// @return True if fitting succeeded
bool fit(const std::vector<double>& data);
```

### Inline Comments
- Use `//` for single-line comments
- Place comments above the code they describe
- Keep comments concise and relevant

## Modern C++ Usage

### Prefer Modern Constructs
- Use `auto` where type is obvious
- Use range-based for loops
- Use `std::optional` for optional values
- Use smart pointers (`std::unique_ptr`, `std::shared_ptr`)

```cpp
// Good
for (const auto& item : container) {
    process(item);
}

auto result = calculate();

std::optional<double> maybe_value = find_value();
```

### Avoid
- Raw pointers (use smart pointers)
- Manual memory management
- C-style casts (use C++ casts)
- Macros (use constexpr or inline functions)

## Automatic Formatting

This project uses clang-format for automatic code formatting. The configuration is in `.clang-format`.

To format code:
```bash
clang-format -i src/**/*.cpp include/**/*.hpp
```
