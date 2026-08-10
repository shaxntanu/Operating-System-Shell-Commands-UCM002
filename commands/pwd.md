# pwd - Print Working Directory

## Description

The `pwd` command stands for **Print Working Directory**. It displays the absolute path of the current directory you are working in within the file system.

## Syntax

```bash
pwd
```

## Example

```bash
$ pwd
/home/username/Documents
```

## Expected Output

When you run `pwd`, it prints the full path from the root directory (`/`) to your current location. This helps you understand where you are in the directory structure.

### Sample Output:
```
/home/username/projects/myapp
```

## Use Cases

- Verify your current location before executing commands
- Confirm you're in the correct directory before file operations
- Understanding your position in the file system hierarchy

## Notes

- The path always starts from the root directory (`/` on Linux/Unix systems)
- On Windows systems using Git Bash or WSL, paths follow Unix conventions
- Very useful when navigating complex directory structures
