# Operating System Shell Commands

Basic shell commands for Operating Systems course, organized into lab-wise modules.

## Repository Structure

This repository is organized into labs, each covering specific shell commands and concepts:

- **Lab 1**: Basic navigation, file listing, and paths with spaces
- **Lab 2**: cat command, file operations, and redirection

## Labs Overview

### Lab 1: Basic Shell Commands and Navigation
- pwd, cd, ls commands
- Directory navigation (cd .., cd ~)
- Listing files with options (ls -l, ls -a, ls -lS)
- Handling paths with spaces (quoting and escaping)
- Manual pages (man)
- Clear screen

### Lab 2: cat Command and Redirection
- Displaying file contents
- Concatenating multiple files
- Creating files with cat >
- Appending with cat >>
- Standard input and output (stdin/stdout)
- Redirection operators (>, >>)
- EOF signal (Ctrl+D)

## Quick Start

Navigate to any lab and run the demo script:

```bash
# Lab 1
cd lab1/scripts
bash lab1_demo.sh

# Lab 2
cd lab2/scripts
bash lab2_demo.sh
```

## Repository Structure

```
Operating-System-Shell-Commands/
├── README.md                    # This file
│
├── lab1/                        # Lab 1: Basic Commands
│   ├── README.md               # Lab 1 overview
│   ├── commands/               # Detailed documentation
│   │   ├── pwd.md
│   │   ├── cd.md
│   │   ├── ls.md
│   │   ├── clear.md
│   │   ├── paths-and-quoting.md
│   │   └── man.md
│   └── scripts/
│       └── lab1_demo.sh        # Lab 1 demonstration
│
└── lab2/                        # Lab 2: cat and Redirection
    ├── README.md               # Lab 2 overview
    ├── commands/               # Detailed documentation
    │   ├── cat.md
    │   └── redirection.md
    └── scripts/
        └── lab2_demo.sh        # Lab 2 demonstration
```

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

**Shell** is the command-line interface that:
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

---

For detailed lab-wise documentation and examples, navigate to the respective lab folders.
