
# C Project Initializer

This script sets up a basic C project structure with Raylib support, making it easy to start a new C project quickly.

- Automatically generates a structured C project with the following layout:
  ```
  .
  ├── bin
  ├── compile_commands.json
  ├── include
  ├── makefile
  ├── resources
  └── src └── main.c
  ```
- Includes a `Makefile` preconfigured for Raylib support.
- Provides a `compile_commands.json` template for Clang.
- Creates a basic `main.c` file with a simple `printf` statement.

## Installation
To install the script globally, run:

```bash
curl -o ~/.local/bin/c https://raw.githubusercontent.com/EthanDCR/c_initializer/main/init_project.sh
chmod +x ~/.local/bin/c
```

If `~/.local/bin/` is not in your `$PATH`, add the following to your shell configuration file (`~/.bashrc` or `~/.zshrc`):

```bash
export PATH="$HOME/.local/bin:$PATH"
```

Then, reload your shell:
```bash
source ~/.bashrc  # or source ~/.zshrc
```

## Usage
To initialize a new C project, run:
```bash
c <project_name>
```
Example:
```bash
c my_project
```
This will create a directory `my_project/` with the required project files.

## Uninstallation
To remove the script, run:
```bash
rm ~/.local/bin/c
```
GitHub Repository: [EthanDCR/c_initializer](https://github.com/EthanDCR/c_initializer)

