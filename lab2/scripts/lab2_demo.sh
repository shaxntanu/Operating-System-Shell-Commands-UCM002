#!/bin/bash

################################################################################
# lab2_demo.sh
# 
# Lab 2: cat Command, File Operations, and Redirection
# This script demonstrates commands covered in Lab 2.
#
# Usage: bash lab2_demo.sh
################################################################################

echo "==================================================================="
echo "  Lab 2: cat Command and Redirection Demonstration"
echo "==================================================================="
echo ""

# 1. Create demo directory
echo "Setting up demo environment..."
mkdir -p "lab2_demo" 2>/dev/null
echo ""

# 2. Create sample files
echo "1. Creating sample files for demonstration:"
cat > "lab2_demo/hello.c" << 'EOF'
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
EOF
echo "✓ Created hello.c"

cat > "lab2_demo/part1.txt" << 'EOF'
This is part 1 of the file.
It contains the first section.
EOF
echo "✓ Created part1.txt"

cat > "lab2_demo/part2.txt" << 'EOF'
This is part 2 of the file.
It contains the second section.
EOF
echo "✓ Created part2.txt"
echo ""

# 3. Display file contents with cat
echo "2. Displaying file contents (cat):"
echo "Contents of hello.c:"
cat "lab2_demo/hello.c"
echo ""

# 4. Display with line numbers
echo "3. Display with line numbers (cat -n):"
cat -n "lab2_demo/hello.c"
echo ""

# 5. Concatenating multiple files
echo "4. Concatenating multiple files:"
echo "Combining part1.txt and part2.txt:"
cat "lab2_demo/part1.txt" "lab2_demo/part2.txt"
echo ""

# 6. Demonstrate cat without arguments (simulated)
echo "5. cat command without arguments:"
echo "When you run 'cat' without a filename, it reads from standard input."
echo "Example:"
echo "  $ cat"
echo "  hello    [you type]"
echo "  hello    [cat echoes]"
echo "  [Press Ctrl+D to exit]"
echo ""

# 7. Ctrl+D explanation
echo "6. Ctrl+D (EOF signal):"
echo "Ctrl+D sends an EOF (End Of File) signal."
echo "It tells programs reading from stdin that no more input is coming."
echo "Use it to exit 'cat' or finish creating files with 'cat > file'."
echo ""

# 8. Redirect output to file (>)
echo "7. Redirecting output to file (>):"
echo "Creating output.txt with ls output:"
ls -l lab2_demo > "lab2_demo/output.txt"
echo "✓ Output redirected to output.txt"
echo ""

echo "Contents of output.txt:"
cat "lab2_demo/output.txt"
echo ""

# 9. Creating file with cat >
echo "8. Creating a file with cat > (redirection):"
cat > "lab2_demo/notes.txt" << 'EOF'
Lab 2 Notes:
- cat displays file contents
- cat > creates/overwrites files
- cat >> appends to files
EOF
echo "✓ Created notes.txt using cat >"
echo ""

echo "Contents of notes.txt:"
cat "lab2_demo/notes.txt"
echo ""

# 10. Appending to file with >>
echo "9. Appending to file (>>):"
cat >> "lab2_demo/notes.txt" << 'EOF'
- > overwrites existing files
- >> preserves existing content
EOF
echo "✓ Appended to notes.txt using cat >>"
echo ""

echo "Updated contents of notes.txt:"
cat "lab2_demo/notes.txt"
echo ""

# 11. Demonstrate > vs >>
echo "10. Difference between > and >>:"
echo "Creating test.txt with >:"
echo "First line" > "lab2_demo/test.txt"
cat "lab2_demo/test.txt"
echo ""

echo "Overwriting test.txt with >:"
echo "Replaced content" > "lab2_demo/test.txt"
cat "lab2_demo/test.txt"
echo "Note: Previous content was lost!"
echo ""

echo "Now using >> to append:"
echo "Appended line 1" >> "lab2_demo/test.txt"
echo "Appended line 2" >> "lab2_demo/test.txt"
cat "lab2_demo/test.txt"
echo "Note: Previous content was preserved!"
echo ""

# 12. Standard input and output explanation
echo "11. Standard Input and Output (stdin/stdout):"
echo ""
echo "stdin (standard input) - where programs read input from"
echo "stdout (standard output) - where programs write output to"
echo ""
echo "Default flow:"
echo "  Keyboard → stdin → Program → stdout → Terminal"
echo ""
echo "With redirection:"
echo "  Keyboard → stdin → cat → stdout → File (via >)"
echo ""

# 13. Concatenate and redirect
echo "12. Combining concatenation and redirection:"
cat "lab2_demo/part1.txt" "lab2_demo/part2.txt" > "lab2_demo/combined.txt"
echo "✓ Combined part1.txt and part2.txt into combined.txt"
echo ""

echo "Contents of combined.txt:"
cat "lab2_demo/combined.txt"
echo ""

# 14. Working with files with spaces in names
echo "13. Working with filenames containing spaces:"
cat > "lab2_demo/my file.txt" << 'EOF'
This file has spaces in its name.
You need to use quotes to access it.
EOF
echo "✓ Created 'my file.txt'"
echo ""

echo "Displaying contents:"
cat "lab2_demo/my file.txt"
echo ""

# Clean up demo files
echo "==================================================================="
echo "  Cleaning up demo files..."
echo "==================================================================="
rm -rf "lab2_demo"
echo "✓ Removed lab2_demo directory"
echo ""

echo "==================================================================="
echo "  Lab 2 Demonstration Complete!"
echo "==================================================================="
echo ""
echo "Commands Covered in Lab 2:"
echo "  • cat file           - Display file contents"
echo "  • cat file1 file2    - Concatenate multiple files"
echo "  • cat -n file        - Display with line numbers"
echo "  • cat                - Read from stdin (use Ctrl+D to exit)"
echo "  • cat > file         - Create/overwrite file from input"
echo "  • cat >> file        - Append to file from input"
echo "  • >                  - Redirect output (overwrites)"
echo "  • >>                 - Append output to file"
echo "  • Ctrl+D             - Send EOF signal"
echo ""
echo "Key Concepts:"
echo "  • stdin/stdout       - Standard input and output streams"
echo "  • Redirection        - Shell feature, not command-specific"
echo "  • > vs >>            - Overwrite vs append"
echo "  • EOF                - End of File signal"
echo ""
echo "For detailed documentation, see lab2/commands/ folder."
echo ""
