# Output Redirection

## Description

**Output redirection** allows you to capture the output of a command and send it to a file instead of displaying it on the terminal screen. This is extremely useful for saving command results, creating logs, or processing data.

Redirection is a **shell feature**, not specific to any particular command. The shell handles redirection operators like `>` and `>>` before running the command.

## Standard Input and Standard Output

Understanding stdin and stdout helps explain how redirection works.

### Standard Input (stdin)
- Where a program reads input from
- By default: keyboard/terminal
- File descriptor: 0

### Standard Output (stdout)
- Where a program writes output to  
- By default: terminal screen
- File descriptor: 1

### Basic Flow:

```
Keyboard → stdin → Program → stdout → Terminal
```

### With Redirection:

```
Keyboard → stdin → Program → stdout → File
```

## The `>` Operator

The `>` symbol redirects standard output (stdout) to a file.

### Syntax

```bash
command > filename
```

## Example: Redirecting `ls` Output

### Command:
```bash
ls -lS > out.txt
```

### What Happens:
1. The `ls -lS` command lists files in long format sorted by size
2. Instead of displaying on the terminal, the output is **redirected** to a file called `out.txt`
3. The file `out.txt` is created (or overwritten if it exists)
4. The terminal shows no output

### Viewing the Redirected Output:
```bash
cat out.txt
```

**Example Content of `out.txt`:**
```
total 1024
-rw-r--r-- 1 username users 524288 Jan 15 10:30 large_file.zip
-rw-r--r-- 1 username users  10240 Jan 14 09:15 medium_file.txt
-rw-r--r-- 1 username users    256 Jan 13 14:20 small_file.sh
```

---

## Using cat with Redirection

The `cat` command is frequently used with redirection to create or append to files.

### Creating a File with `cat >`:

```bash
cat > hello.c
```

**What happens:**
1. The shell opens/creates `hello.c` for writing
2. `cat` reads from standard input (your keyboard)
3. The output is redirected to `hello.c`
4. Type your content
5. Press **Ctrl+D** to send EOF (End Of File) and finish

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

**Important:** This **overwrites** the file if it already exists!

### Appending with `cat >>`:

```bash
cat >> hello.c
```

**What happens:**
- Same as above, but appends to the end of the file
- Existing content is preserved

**Example:**
```bash
$ cat >> hello.c
// Added later
[Press Ctrl+D]
```

### Ctrl+D and EOF

**Ctrl+D** is a keyboard control action that signals **EOF (End Of File)** to programs reading from standard input.

- Not a command itself
- Tells the program no more input is coming
- Commonly used to exit programs reading from stdin
- Returns you to the shell prompt

**Example:**
```bash
$ cat
hello
hello
world
world
[Press Ctrl+D to exit]
$
```

---

## ⚠️ Important: Overwriting Behavior

### The `>` operator **overwrites** the file if it already exists!

**Example:**

```bash
# First command
echo "First line" > output.txt
cat output.txt
# Output: First line

# Second command - OVERWRITES the file
echo "Second line" > output.txt
cat output.txt
# Output: Second line
# The "First line" is gone!
```

---

## Appending Output: `>>`

To **add** to a file without overwriting it, use `>>` (append operator):

```bash
command >> filename
```

### Example:

```bash
echo "First line" > output.txt
echo "Second line" >> output.txt
echo "Third line" >> output.txt

cat output.txt
```

**Output:**
```
First line
Second line
Third line
```

---

## Practical Examples

### 1. Save Directory Listing
```bash
ls -la > directory_contents.txt
```

### 2. Save System Information
```bash
uname -a > system_info.txt
```

### 3. Create a Log File
```bash
date >> activity_log.txt
echo "Task completed" >> activity_log.txt
```

### 4. Redirect Error Messages
```bash
command 2> error_log.txt        # Redirect errors only
command > output.txt 2>&1       # Redirect both output and errors
```

---

## Quick Reference

| Operator | Description | Effect on Existing File |
|----------|-------------|------------------------|
| `>` | Redirect output to file | **Overwrites** file |
| `>>` | Append output to file | **Adds** to end of file |
| `2>` | Redirect errors to file | Overwrites file |
| `2>>` | Append errors to file | Adds to end of file |
| `&>` | Redirect output and errors | Overwrites file |

---

## Common Use Cases

1. **Saving Command Results**: Store output for later review
   ```bash
   ps aux > running_processes.txt
   ```

2. **Creating Reports**: Generate text files with system information
   ```bash
   df -h > disk_usage_report.txt
   ```

3. **Logging**: Keep records of script execution
   ```bash
   ./backup.sh > backup_log.txt 2>&1
   ```

4. **Filtering and Saving**: Combine with pipes
   ```bash
   ls -l | grep ".txt" > text_files.txt
   ```

---

## Tips

- Always use `>>` if you want to preserve existing file content
- Use `>` when you want a fresh file with only the current output
- Remember: `>` overwrites without warning!
- Redirect errors separately with `2>` for better debugging
- Use `tee` command to display output AND save it: `command | tee output.txt`
- Press **Ctrl+D** to send EOF when creating files with `cat >`
- Redirection is a **shell feature** that works with any command, not just `cat` or `ls`

## Related Commands

- `cat`: Display and concatenate files (see [cat.md](cat.md))
- `tee`: Read from stdin and write to both stdout and files
- `echo`: Print text (often used with redirection)
