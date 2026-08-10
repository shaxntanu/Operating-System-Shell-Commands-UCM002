# clear - Clear Terminal Screen

## Description

The `clear` command clears the visible content from your terminal screen, providing a clean workspace. It's useful when your terminal becomes cluttered with output from previous commands.

## Syntax

```bash
clear
```

## Example

**Before running `clear`:**
```bash
$ pwd
/home/username/Documents
$ ls
file1.txt  file2.txt  folder1
$ cd ..
$ pwd
/home/username
```

**After running `clear`:**
```bash
$ clear
```

The terminal screen is cleared, and you'll see a fresh prompt at the top:
```bash
$
```

## Important Notes

### ✅ What `clear` Does:
- Clears the visible terminal output
- Provides a clean screen to work with
- Moves your cursor to the top of the terminal

### ❌ What `clear` Does NOT Do:
- **Does NOT delete any files or directories**
- **Does NOT erase command history** (you can still use arrow keys to access previous commands)
- **Does NOT stop running processes**
- **Does NOT affect the file system in any way**

## Alternative Keyboard Shortcut

In many terminal emulators, you can also use:
```
Ctrl + L
```
This keyboard shortcut performs the same function as the `clear` command.

## Use Cases

- Clean up a cluttered terminal screen
- Improve readability before starting a new task
- Remove sensitive information from view (though it's still in command history)
- Take a screenshot of clean terminal output

## Related Commands

- `reset`: Reinitializes the terminal (more thorough than `clear`)
- `history -c`: Clears command history (different from clearing the screen)
- `Ctrl + L`: Keyboard shortcut for clearing screen

## Tips

- The cleared content is often still accessible by scrolling up in your terminal
- Use `clear` frequently to maintain a clean working environment
- Remember: clearing the screen doesn't affect your current directory or environment variables
