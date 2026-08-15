# cd - Change Directory

## Description

The `cd` command stands for **Change Directory**. It allows you to navigate between different directories (folders) in the file system.

## Syntax

```bash
cd <directory>
```

## Common Usage

### 1. Change to a Specific Directory

```bash
cd Documents
```

This changes your current directory to "Documents" (if it exists in your current location).

### 2. Move to Parent Directory

```bash
cd ..
```

The `..` represents the **parent directory** (one level up in the directory tree).

**Example:**
```bash
$ pwd
/home/username/Documents/projects
$ cd ..
$ pwd
/home/username/Documents
```

### 3. Move to Home Directory

```bash
cd ~
```

The `~` symbol represents your **user's home directory**.

**Example:**
```bash
$ pwd
/home/username/Documents/projects/myapp
$ cd ~
$ pwd
/home/username
```

## Special Symbols

| Symbol | Meaning |
|--------|---------|
| `..` | Parent directory (one level up) |
| `~` | User's home directory |
| `/` | Root directory (top of file system) |
| `.` | Current directory |

## Examples

### Navigate to an absolute path:
```bash
cd /var/log
```

### Navigate to a relative path:
```bash
cd projects/myapp
```

### Go back to previous directory:
```bash
cd -
```

## Common Errors

- **"No such file or directory"**: The directory you're trying to access doesn't exist or the path is incorrect
- Use `ls` to see available directories before using `cd`

## Paths with Spaces

When a directory name contains spaces, you need to quote or escape the path:

### Using Double Quotes:
```bash
cd "my projects"
```

### Using Single Quotes:
```bash
cd 'my projects'
```

### Using Backslash Escaping:
```bash
cd my\ projects
```

**Why this matters:**

Without quoting or escaping, the shell treats each space as a separator:
```bash
cd my projects    # Wrong! Treated as two separate arguments
cd "my projects"  # Correct! Treated as one argument
```

See [paths-and-quoting.md](paths-and-quoting.md) for more details.

## Tips

- Use `pwd` after `cd` to confirm your new location
- Tab completion can help you navigate faster (press Tab while typing a directory name)
- Tab completion automatically escapes spaces in directory names
- Combine with `ls` to explore directory contents: `cd Documents && ls`
