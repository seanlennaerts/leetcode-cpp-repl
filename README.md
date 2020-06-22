# LeetCode C++ Repl

Work on LeetCode problems with intellisense and a debugger!

**Environment Similarities**
- Compiled using the latest C++ 17 standard
- Level one optimization (-O1)
- [AddressSanitizer](https://github.com/google/sanitizers/wiki/AddressSanitizer) (-fsanitize=address) is enabled to help detect out-of-bounds and use-after-free bugs
- I've attempted to include most standard library headers for convenience. LeetCode hasn't disclosed this list so I've used this [wiki](https://en.wikipedia.org/wiki/C%2B%2B_Standard_Library#Standard_headers) for reference.

**Differences**
- 🔍 Intellisense
- 🐛 GDB Debugger
- 🧪 [Catch2](https://github.com/catchorg/Catch2) testing framework
- ⚠ Uses GCC instead of Clang

## Prerequisites
1. VS Code
2. [C/C++ Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) installed on WSL side
3. g++. If it's not installed, `sudo apt-get install build-essential`.
4. gdb. If it's not installed, `sudo apt-get install gdb`.

## Use
1. Write code in `solution.h`
2. Write tests in `test-solution.cpp`
3. Run or hit <kbd>F5</kbd>

## Optional Commands
The following commands are completely optional if you're using VS Code.
- `make` builds the program for debugging
- `make clean` to undo

## Notes
It's important to build using the Makefile because rebuilding the Catch2 header every time adds almost 10 seconds to the build time. The Makefile will only rebuild the code that's changed.