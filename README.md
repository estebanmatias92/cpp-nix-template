# C++ Nix Template

C++17 console application template with Pitchfork Layout and Nix flakes.

## Features

- **Pitchfork Layout** project structure
- **CMake** build system with Ninja
- **Nix flakes** for reproducible dev environment
- **direnv** integration
- **clang-format** / **clang-tidy** / **editorconfig** support

## Requirements

- [Nix](https://nixos.org/download.html) with flakes enabled
- [direnv](https://direnv.net/) (optional but recommended)

## Quick Start

```bash
# 1. Copy .envrc.example to .envrc and allow it
cp .envrc.example .envrc
direnv allow

# 2. Build the project
make build                    # Debug build
make build BUILD_TYPE=Release  # Release build

# 3. Run the executable
make run

# 4. Other targets
make clean   # Clean build artifacts
make help    # Show available targets
```

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `BUILD_TYPE` | `Debug` | Build type: `Debug` or `Release` |
| `BUILD_DIR` | `build` | Build output directory |

## Project Structure

```
.
├── src/           # Source files (.cpp)
├── include/       # Header files (.h)
├── build/         # Build output (generated)
├── docs/          # Documentation
├── data/          # Data files
├── external/      # External dependencies
├── tests/         # Test files
├── CMakeLists.txt # Build configuration
├── Makefile       # Task CLI
├── build.sh       # Build script
├── run.sh         # Run script
└── clean.sh       # Clean script
```

## Editor Setup

### VS Code

Install extensions:
- C/C++ (Microsoft)
- Clang-Format (xaver)

Settings (`.vscode/settings.json`):
```json
{
  "C_Cpp.default.configurationProvider": "ms-vscode.cmake-tools",
  "editor.formatOnSave": true,
  "clang-format.executable": "${workspaceFolder}/.clang-format"
}
```

### Neovim

Ensure `clangd` LSP is available in PATH (included in devShell).

## License

MIT
