# Output Redirection

## Description

**Output redirection** allows you to capture the output of a command and send it to a file instead of displaying it on the terminal screen. This is extremely useful for saving command results, creating logs, or processing data.

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
