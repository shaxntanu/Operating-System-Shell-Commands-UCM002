# ls - List Files and Directories

## Description

The `ls` command is used to **list files and directories** in the file system. It's one of the most frequently used commands in shell environments.

## Basic Syntax

```bash
ls [options] [directory]
```

## Common Variations

### 1. Basic List

```bash
ls
```

Lists all visible files and directories in the current directory.

**Example Output:**
```
Desktop  Documents  Downloads  Pictures  Videos
```

---

### 2. List Parent Directory

```bash
ls ..
```

Lists files and directories in the parent directory (one level up).

---

### 3. Long Format Listing

```bash
ls -l
```

Displays detailed information about files and directories in **long format**.

**Example Output:**
```
total 48
drwxr-xr-x 2 username users 4096 Jan 15 10:30 Desktop
-rw-r--r-- 1 username users 1234 Jan 14 09:15 file.txt
drwxr-xr-x 3 username users 4096 Jan 13 14:20 Documents
```

**Column Explanation:**
- **Column 1**: File permissions (e.g., `drwxr-xr-x`)
  - First character: `d` = directory, `-` = file, `l` = link
  - Next 9 characters: Read (`r`), Write (`w`), Execute (`x`) permissions for owner, group, and others
- **Column 2**: Number of links
- **Column 3**: Owner username
- **Column 4**: Group name
- **Column 5**: File size in bytes
- **Column 6-8**: Last modification date and time
- **Column 9**: File or directory name

---

### 4. Sort by File Size

```bash
ls -lS
```

Lists files in **long format** sorted by **file size** (largest first).

**Options Explained:**
- `-l`: Long listing format
- `-S`: Sort by file size (capital S)

**Example Output:**
```
total 1024
-rw-r--r-- 1 username users 524288 Jan 15 10:30 large_file.zip
-rw-r--r-- 1 username users  10240 Jan 14 09:15 medium_file.txt
-rw-r--r-- 1 username users    256 Jan 13 14:20 small_file.sh
```

---

### 5. Show Hidden Files

```bash
ls -a
```

Displays **all files**, including hidden files and directories.

**What are hidden files?**
- In Linux/Unix systems, files and directories that start with a dot (`.`) are hidden
- Examples: `.bashrc`, `.git`, `.config`
- These are often configuration files or system files

**Example Output:**
```
.  ..  .bashrc  .config  Desktop  Documents  .git  file.txt
```

**Special Entries:**
- `.` represents the current directory
- `..` represents the parent directory

---

### 6. List Only Directories

```bash
ls -d */
```

Lists only **directories** (folders) in the current location.

**Options Explained:**
- `-d`: List directories themselves, not their contents
- `*/`: Pattern that matches only directories

**Example Output:**
```
Desktop/  Documents/  Downloads/  Pictures/  Videos/
```

**Note:** The trailing `/` indicates these are directories.

---

## Combining Options

You can combine multiple options:

```bash
ls -la
```
Lists all files (including hidden) in long format.

```bash
ls -laSh
```
Lists all files in long format, sorted by size, with human-readable file sizes.

---

## Quick Reference Table

| Command | Description |
|---------|-------------|
| `ls` | List files and directories |
| `ls ..` | List contents of parent directory |
| `ls -l` | Long format with details |
| `ls -lS` | Long format sorted by size |
| `ls -a` | Show hidden files |
| `ls -d */` | List only directories |
| `ls -lh` | Long format with human-readable sizes |
| `ls -lt` | Long format sorted by modification time |

---

## Tips

- Use `ls -lh` for human-readable file sizes (KB, MB, GB instead of bytes)
- Use `ls -lt` to sort by modification time (newest first)
- Use `ls -ltr` to sort by modification time in reverse (oldest first)
- Combine with `grep` to filter results: `ls -l | grep ".txt"`
