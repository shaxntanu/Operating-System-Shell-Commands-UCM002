# Operating System Shell Commands

Basic shell commands for Operating Systems course. Simple explanations with examples.

## Commands Covered

- **pwd** - Print Working Directory
- **cd** - Change Directory
- **ls** - List Files and Directories
- **clear** - Clear Terminal Screen
- **Redirection** - Redirect output to files
- **man** - Manual Pages

## Shell → Kernel → Hardware

When you run a command:

```
User types command
    ↓
Shell
    ↓
Kernel
    ↓
Hardware
```

The shell is your command-line interface. The kernel manages system resources and talks to hardware.

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
| `clear` | Clear screen | `clear` |
| `command > file` | Save output to file | `ls -l > output.txt` |
| `man <command>` | Show manual | `man ls` |

## Repository Structure

```
Operating-System-Shell-Commands/
├── README.md
├── commands/
│   ├── pwd.md
│   ├── cd.md
│   ├── ls.md
│   ├── clear.md
│   ├── redirection.md
│   └── man.md
└── scripts/
    └── basic_commands.sh
```
