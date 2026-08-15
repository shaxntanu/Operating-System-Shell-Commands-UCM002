# cat - Display and Concatenate Files

## Description

The `cat` command is named after **concatenate**. It is used to:
- Display file contents
- Concatenate (combine) multiple files
- Read from standard input
- Create files with output redirection
- Number lines in output

## Syntax

```bash
cat [options] [file...]
```

## Basic Usage: Reading from Standard Input

When you run `cat` without any filename:

```bash
cat
```

The command waits for input from the terminal (standard input).

**Example:**
```bash
$ cat
hello
hello
Linux
Linux
```

### What's Happening:

1. You type: `hello`
2. Press Enter
3. `cat` reads from standard input and writes to standard output
4. The terminal displays: `hello`
5. This continues until you signal end-of-file

### Stopping with Ctrl+D (EOF)

To stop `cat` from reading input, press:
```
Ctrl+D
```

**What Ctrl+D does:**
- Sends an **EOF (End Of File)** signal
- Tells programs reading from input that no more data is coming
- Returns you to the shell prompt

**Important:** Ctrl+D is not a command itself. It's a keyboard control action that signals EOF to a program reading from standard input.

## Displaying File Contents

To display a file's contents:

```bash
cat filename
```

### Example: Viewing a C program

```bash
cat hello.c
```

**Output:**
```c
#include <stdio.h>

int main() {
    printf("Hello");
    return 0;
}
```

### Example: Viewing a text file

```bash
cat readme.txt
```

**Output:**
```
This is a sample text file.
It contains multiple lines.
```

## Concatenating Multiple Files

The name `cat` comes from **concatenate** - combining files in sequence.

### Syntax:
```bash
cat file1 file2 file3
```

### Example:

Suppose you have two files:

**hello_1.c:**
```c
#include <stdio.h>
```

**hello_2.c:**
```c
int main() {
    printf("Hello");
    return 0;
}
```

**Concatenate them:**
```bash
cat hello_1.c hello_2.c
```

**Output:**
```c
#include <stdio.h>
int main() {
    printf("Hello");
    return 0;
}
```

The files are read in order and their contents are combined in the output.

### Practical Example:

```bash
cat part1.txt part2.txt part3.txt
```

This displays all three files' contents in sequence.

## Numbering Lines with cat -n

The `-n` option numbers all output lines:

```bash
cat -n filename
```

### Example:

```bash
cat -n hello.c
```

**Output:**
```
     1  #include <stdio.h>
     2
     3  int main() {
     4      printf("Hello");
     5      return 0;
     6  }
```

**Note:** This only affects how the output is displayed. It does not modify the file.

### Use Cases for Line Numbers:
- Examining code
- Referencing specific lines
- Debugging
- Comparing file contents

## Creating Files with Redirection

You can combine `cat` with shell redirection to create files.

### Using `>` (Overwrite)

```bash
cat > hello.c
```

**What happens:**
1. The shell creates or opens `hello.c` for writing
2. `cat` reads from standard input (your keyboard)
3. The output is redirected into `hello.c`
4. Type your content
5. Press `Ctrl+D` to finish

**Example:**
```bash
$ cat > hello.c
#include <stdio.h>

int main() {
    printf("Hello");
    return 0;
}
[Press Ctrl+D]
```

**Important:** The `>` operator **overwrites** the file if it already exists!

### Using `>>` (Append)

```bash
cat >> hello.c
```

**What happens:**
- Same as `>`, but the output is **appended** to the end of the file
- Existing content is preserved

**Example:**
```bash
$ cat >> hello.c
// Added later
[Press Ctrl+D]
```

The new content is added to the end of the file.

## Standard Input and Output

Understanding stdin and stdout helps explain `cat`'s behavior:

### Standard Input (stdin):
- Where a program reads input from
- By default: keyboard/terminal
- File descriptor: 0

### Standard Output (stdout):
- Where a program writes output to
- By default: terminal screen
- File descriptor: 1

### How cat works:

**Without a filename:**
```
Keyboard → stdin → cat → stdout → Terminal
```

**With a filename:**
```
File → cat → stdout → Terminal
```

**With redirection:**
```
Keyboard → stdin → cat → stdout → File (via >)
```

## Redirection Operators

### `>` (Overwrite)
```bash
cat > file.txt
```
- Creates file if it doesn't exist
- **Overwrites/truncates** file if it exists
- Redirects stdout to the file

### `>>` (Append)
```bash
cat >> file.txt
```
- Creates file if it doesn't exist
- **Appends** to end of file if it exists
- Preserves existing content

### Comparison:

| Operator | Effect | Use Case |
|----------|--------|----------|
| `>` | Overwrites file | Creating new files |
| `>>` | Appends to file | Adding to existing files |

**Warning:** Be careful with `>` - it can destroy existing file contents without warning!

## Important Notes

### Redirection is a Shell Feature

The `>` and `>>` operators are **shell redirection operators**, not part of `cat` itself.

When you run:
```bash
cat > file.txt
```

The shell:
1. Opens/creates `file.txt` for writing
2. Redirects `cat`'s stdout to the file
3. Runs `cat`

This works with any command, not just `cat`:
```bash
ls > files.txt
pwd > location.txt
echo "Hello" > greeting.txt
```

### cat vs echo

While `cat` without arguments might seem similar to `echo`, they're different:

**cat:**
- Reads from stdin line by line until EOF
- Writes what it reads to stdout
- Useful for reading files or creating multi-line content

**echo:**
- Prints its arguments to stdout
- One command = one line of output
- Useful for printing simple messages

## Practical Examples

### 1. View a configuration file:
```bash
cat /etc/hosts
```

### 2. View multiple log files:
```bash
cat log1.txt log2.txt log3.txt
```

### 3. Create a simple text file:
```bash
cat > notes.txt
This is my note.
I can type multiple lines.
[Ctrl+D to finish]
```

### 4. Append to a file:
```bash
cat >> notes.txt
Adding more content.
[Ctrl+D to finish]
```

### 5. Display with line numbers:
```bash
cat -n script.sh
```

### 6. Combine files into one:
```bash
cat part1.txt part2.txt part3.txt > complete.txt
```

### 7. View file contents with spaces in filename:
```bash
cat "my file.txt"
```

## Common Options

| Option | Description | Example |
|--------|-------------|---------|
| `-n` | Number all output lines | `cat -n file.txt` |
| `-b` | Number non-empty lines only | `cat -b file.txt` |
| `-s` | Squeeze multiple blank lines | `cat -s file.txt` |
| `-E` | Display `$` at end of lines | `cat -E file.txt` |

## Related Commands

- `less`: View files page by page (better for large files)
- `more`: View files page by page (older version)
- `head`: Display first lines of a file
- `tail`: Display last lines of a file
- `tac`: Display file in reverse order (cat backwards!)

## Summary

`cat` is a versatile command for working with file contents:

```bash
cat                     # Read from stdin
cat file.txt           # Display file
cat file1 file2        # Concatenate files
cat -n file.txt        # Display with line numbers
cat > file.txt         # Create/overwrite file
cat >> file.txt        # Append to file
```

Remember:
- Press **Ctrl+D** to send EOF
- Use **`>`** to overwrite (careful!)
- Use **`>>`** to append safely
- Redirection is a **shell feature**, not specific to `cat`
