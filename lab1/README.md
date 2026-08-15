# Lab 1: Basic Shell Commands and Navigation

Basic shell commands for navigation, listing files, and handling paths with spaces.

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

### Screen Management
- **clear** - Clear Terminal Screen

### Paths and Quoting
- **" "** - Double quotes for paths with spaces
- **' '** - Single quotes for paths with spaces
- **\\** - Backslash to escape spaces

### Help
- **man** - Manual Pages

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
| `"path name"` | Quote path with spaces | `cd "my projects"` |
| `'path name'` | Quote path with spaces | `cd 'my projects'` |
| `path\ name` | Escape space in path | `cd my\ projects` |
| `man <command>` | Show manual | `man ls` |

## Running the Demo

```bash
cd lab1/scripts
bash lab1_demo.sh
```

## Documentation

Detailed documentation for each command is available in the `commands/` directory:

- [pwd.md](commands/pwd.md) - Print Working Directory
- [cd.md](commands/cd.md) - Change Directory
- [ls.md](commands/ls.md) - List Files and Directories
- [clear.md](commands/clear.md) - Clear Terminal Screen
- [paths-and-quoting.md](commands/paths-and-quoting.md) - Handling Paths with Spaces
- [man.md](commands/man.md) - Manual Pages
