#include <CLI/CLI.hpp>
#include <fmt/core.h>

int main(int argc, char* argv[]) {
    CLI::App app{"Factory - C++ Factor Modeling CLI"};
    
    std::string input_file;
    std::string output_file;
    
    app.add_option("-i,--input", input_file, "Input data file")->required();
    app.add_option("-o,--output", output_file, "Output file");
    
    CLI11_PARSE(app, argc, argv);
    
    fmt::print("Factory - Factor Modeling CLI\n");
    fmt::print("Input file: {}\n", input_file);
    
    return 0;
}
