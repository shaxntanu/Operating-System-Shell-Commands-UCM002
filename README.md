# Operating System Shell Commands

A beginner-friendly repository for learning essential shell commands used in Operating Systems courses. This covers fundamental Linux/Unix command-line operations with clear explanations and practical examples.

## What This Repository Contains

This repository includes documentation for basic shell commands that every OS student should know. Each command has its own detailed guide with examples and explanations.

### Commands Covered

- **pwd** - Print Working Directory
- **cd** - Change Directory
- **ls** - List Files and Directories (with various options)
- **clear** - Clear Terminal Screen
- **Redirection** - Redirect command output to files
- **man** - Display Manual Pages

## Understanding Shell, Kernel, and Hardware

When you execute a command in the shell, it goes through multiple layers:

```
User (Types shell command)
    ↓
Shell (Command-line interface)
    ↓
Kernel (Core of Operating System)
    ↓
Hardware / File System
```

**How it works:**

1. You type a command in the shell (like `ls -l`)
2. The shell interprets the command and translates it into system calls
3. The kernel receives these calls and manages the required resources
4. The hardware executes the actual operations (reading disk, accessing memory, etc.)
5. Results flow back up through the layers to display output in your terminal

**Example:**
```
User types: ls -l
    ↓
Shell interprets: "List files in long format"
    ↓
Kernel executes: Read directory entries from disk
    ↓
Hardware provides: File data from storage
    ↓
Output displayed: File listing in terminal
```

## Quick Reference

| Command | Purpose | Example |
|---------|---------|---------|
| `pwd` | Show current directory path | `pwd` |
| `cd <dir>` | Change to specified directory | `cd Documents` |
| `cd ..` | Move to parent directory | `cd ..` |
| `cd ~` | Move to home directory | `cd ~` |
| `ls` | List files and directories | `ls` |
| `ls -l` | List in long format (detailed) | `ls -l` |
| `ls -a` | List all files (including hidden) | `ls -a` |
| `ls -lS` | List sorted by file size | `ls -lS` |
| `ls -d */` | List only directories | `ls -d */` |
| `clear` | Clear terminal screen | `clear` |
| `command > file` | Redirect output to file (overwrite) | `ls -l > output.txt` |
| `man <command>` | Show manual page for command | `man ls` |

## Repository Structure

```
Operating-System-Shell-Commands/
│
├── README.md                    # Main documentation
│
├── commands/                    # Detailed command documentation
│   ├── pwd.md                  # Print Working Directory
│   ├── cd.md                   # Change Directory
│   ├── ls.md                   # List files and directories
│   ├── clear.md                # Clear terminal screen
│   ├── redirection.md          # Output redirection
│   └── man.md                  # Manual pages
│
└── scripts/                     # Example shell scripts
    └── basic_commands.sh       # Demonstration script
```

## Getting Started

If you're new to the command line, start with these basics:

**Open your terminal:**
- Linux: Open Terminal application
- macOS: Open Terminal from Applications > Utilities
- Windows: Use Git Bash, WSL (Windows Subsystem for Linux), or PowerShell

**Try your first commands:**
```bash
# Where am I?
pwd

# What files are here?
ls

# Show me details
ls -l

# Move to home directory
cd ~

# Clear the screen
clear

# Get help on any command
man ls
```

## Tips for Beginners

- Use Tab completion: Start typing a filename or command, then press Tab
- Use the Up arrow to access your command history
- Use `pwd` frequently to know where you are in the file system
- Always check with `ls` before navigating with `cd`
- Linux is case-sensitive: `file.txt` and `File.txt` are different files
- Be careful with `>` as it overwrites files without warning

## Useful Resources

**Official Documentation:**
- [GNU Bash Manual](https://www.gnu.org/software/bash/manual/)
- [Linux Command Library](https://linuxcommand.org/)

**Learning Platforms:**
- [Linux Journey](https://linuxjourney.com/) - Interactive learning
- [The Linux Command Line Book](http://linuxcommand.org/tlcl.php) - Free book
- [Explain Shell](https://explainshell.com/) - Command breakdown tool

**Practice Environments:**
- [OverTheWire: Bandit](https://overthewire.org/wargames/bandit/) - Interactive challenges
- [Terminus](https://web.mit.edu/mprat/Public/web/Terminus/Web/main.html) - Browser-based game
