# Operating System Shell Commands

Basic shell commands for Operating Systems course. Simple explanations with examples.

## Table of Contents

- [Commands Covered](#commands-covered)
- [Shell → Kernel → Hardware](#shell--kernel--hardware)
- [Quick Reference](#quick-reference)
- [Standard Input and Output](#standard-input-and-output)
- [Repository Structure](#repository-structure)

## Commands Covered

### Navigation
- **pwd** - Print Working Directory
- **cd** - Change Directory
- **cd ..** - Move to parent directory
- **cd ~** - Move to home directory

### Listing Files
- **ls** - List Files and Directories
- **ls -l** - Long format listing
- **ls -a** - Show hidden files
- **ls -lS** - List sorted by size
- **ls -d \*/** - List only directories

### Display and Create Files
- **cat** - Display and concatenate files
- **cat -n** - Display with line numbers
- **cat > file** - Create/overwrite file from input
- **cat >> file** - Append to file from input

### Screen Management
- **clear** - Clear Terminal Screen

### Redirection
- **>** - Redirect output to file (overwrites)
- **>>** - Append output to file

### Paths and Quoting
- **" "** - Double quotes for paths with spaces
- **' '** - Single quotes for paths with spaces
- **\\** - Backslash to escape spaces

### Help
- **man** - Manual Pages
- **Ctrl+D** - Send EOF signal

## Shell → Kernel → Hardware

When you run a command, it goes through multiple layers:

```
User (types command)
    ↓
Shell (command-line interface: bash, zsh, etc.)
    ↓
Program/Command (ls, cat, pwd, etc.)
    ↓
Kernel (core of Operating System)
    ↓
Hardware / File System
```

**How it works:**

**User** enters a command like `ls -l`

**Shell** is the command-line interface:
- Reads and parses the command
- Handles quoting and escaping
- Handles redirection (`>`, `>>`)
- Locates and executes the program

**Program/Command** performs the requested operation:
- Commands like `ls`, `cat`, `pwd` are programs
- The shell starts these programs

**Kernel** is the core of the operating system:
- Manages CPU, memory, processes
- Controls file system operations
- Manages hardware access
- Provides system calls for programs

**Hardware/File System**:
- Physical storage devices
- CPU, memory, I/O devices
- Kernel provides controlled access to these resources

**Example:** When you run `cat hello.c`:
1. You type the command
2. Shell parses it and finds the `cat` program
3. Shell starts `cat` with `hello.c` as an argument
4. `cat` asks the kernel to read the file
5. Kernel reads data from the file system/disk
6. Data flows back: Hardware → Kernel → cat → Shell → Terminal

## Quick Reference

| Command | Purpose | Example |
|---------|---------|---------|
| `pwd` | Show current directory | `pwd` |
| `cd <dir>` | Change directory | `cd Documents` |
| `cd ..` | Go to parent directory | `cd ..` |
| `cd ~` | Go to home directory | `cd ~` |
| `ls` | List files | `ls` |
| `ls -l` | List with details | `ls -l` |
| `ls -a` | List all (including hidden) | `ls -a` |
| `ls -lS` | List sorted by size | `ls -lS` |
| `ls -d */` | List only directories | `ls -d */` |
| `cat file` | Display file contents | `cat hello.txt` |
| `cat file1 file2` | Concatenate files | `cat part1 part2` |
| `cat -n file` | Display with line numbers | `cat -n script.sh` |
| `cat > file` | Create/overwrite file | `cat > new.txt` |
| `cat >> file` | Append to file | `cat >> existing.txt` |
| `clear` | Clear screen | `clear` |
| `command > file` | Redirect output (overwrite) | `ls -l > out.txt` |
| `command >> file` | Append output to file | `date >> log.txt` |
| `"path name"` | Quote path with spaces | `cd "my projects"` |
| `'path name'` | Quote path with spaces | `cd 'my projects'` |
| `path\ name` | Escape space in path | `cd my\ projects` |
| `man <command>` | Show manual | `man ls` |
| `Ctrl+D` | Send EOF signal | Press to exit `cat` |

## Standard Input and Output

Commands read input from **stdin** (standard input) and write output to **stdout** (standard output).

### Default Behavior:
```
Keyboard → stdin → Program → stdout → Terminal
```

### With Redirection:
```
Keyboard → stdin → cat → stdout → File (via >)
```

**Example with cat:**

Without arguments, `cat` reads from stdin and writes to stdout:
```bash
$ cat
hello         [you type this]
hello         [cat echoes it]
[Press Ctrl+D to exit]
```

With a file, `cat` reads the file and writes to stdout:
```bash
$ cat file.txt
[contents displayed on terminal]
```

With redirection, stdout goes to a file:
```bash
$ cat > file.txt
[type content]
[Press Ctrl+D]
```

## Repository Structure

```
Operating-System-Shell-Commands/
├── README.md
├── commands/
│   ├── pwd.md
│   ├── cd.md
│   ├── ls.md
│   ├── cat.md
│   ├── clear.md
│   ├── paths-and-quoting.md
│   ├── redirection.md
│   └── man.md
└── scripts/
    └── basic_commands.sh
```
