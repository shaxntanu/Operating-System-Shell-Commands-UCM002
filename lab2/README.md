# Lab 2: cat Command and Redirection

File operations using cat command, output redirection, and understanding standard input/output.

## Commands Covered

### Display and Create Files
- **cat** - Display and concatenate files
- **cat -n** - Display with line numbers
- **cat > file** - Create/overwrite file from input
- **cat >> file** - Append to file from input

### Redirection
- **>** - Redirect output to file (overwrites)
- **>>** - Append output to file

### Control
- **Ctrl+D** - Send EOF signal

## Quick Reference

| Command | Purpose | Example |
|---------|---------|---------|
| `cat file` | Display file contents | `cat hello.txt` |
| `cat file1 file2` | Concatenate files | `cat part1 part2` |
| `cat -n file` | Display with line numbers | `cat -n script.sh` |
| `cat` | Read from stdin | `cat` (then type, Ctrl+D to exit) |
| `cat > file` | Create/overwrite file | `cat > new.txt` |
| `cat >> file` | Append to file | `cat >> existing.txt` |
| `command > file` | Redirect output (overwrite) | `ls -l > out.txt` |
| `command >> file` | Append output to file | `date >> log.txt` |
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

## Key Concepts

### cat without arguments
Reads from stdin and writes to stdout:
```bash
$ cat
hello         [you type this]
hello         [cat echoes it]
[Press Ctrl+D to exit]
```

### Displaying files
```bash
cat file.txt
cat -n file.txt    # with line numbers
```

### Concatenating files
```bash
cat file1.txt file2.txt
```

### Creating files
```bash
cat > newfile.txt
Type your content here
[Press Ctrl+D to finish]
```

### Appending to files
```bash
cat >> existingfile.txt
Add more content
[Press Ctrl+D to finish]
```

### Redirection operators

| Operator | Effect | Use Case |
|----------|--------|----------|
| `>` | Overwrites file | Creating new files |
| `>>` | Appends to file | Adding to existing files |

**Warning:** `>` overwrites files without warning!

## Running the Demo

```bash
cd lab2/scripts
bash lab2_demo.sh
```

## Documentation

Detailed documentation for each command is available in the `commands/` directory:

- [cat.md](commands/cat.md) - Display and Concatenate Files
- [redirection.md](commands/redirection.md) - Output Redirection and stdin/stdout
