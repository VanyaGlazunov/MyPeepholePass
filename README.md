# My Peephole Pass

A learning project to develop an llvm pass that folds $(a+b)^3$

## Description
The pass designed to fold expression like a*a*a + 3*a*a*b + 3*a*b*b + b*b*b into (a+b)*(a+b)*(a+b)

It works very straightforward:
- firstly tries to capture a and b from IR
- secondly match actual expression with expected to ensure that it found right expression.


## Building the plugin
1.  Clone the repository:
    ```bash
    git clone ...
    cd ..
    ```
2.  Create a build directory:
    ```bash
    mkdir build
    cd build
    ```
3.  Run CMake, pointing it to your LLVM build:
    ```bash
    cmake -DLLVM_DIR=/path/to/your/llvm-project/build/lib/cmake/llvm ..
    ```
    Replace /path/to/your/llvm-project/build with your actual path
4.  Compile the plugin:
    ```bash
    make  # or ninja, or cmake --build .
    ```

## Usage
### opt
#### Notice that pass tries to fold expression after thre are canonicalized by other llvm passes and it does not clean dead code.
```bash
opt -load-path-plugin=/path/to/plugin/so -passes=myPeepholePass input.ll -S -o output.ll
```
### clang
```bash
clang++ a.cpp -O3 -fpass-plugin=/path/to/plugin/so
```
