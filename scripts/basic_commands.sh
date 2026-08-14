#!/bin/bash

################################################################################
# basic_commands.sh
# 
# A demonstration script showing basic shell commands covered in this repository.
# This script is for educational purposes to help beginners understand command usage.
#
# Usage: bash basic_commands.sh
################################################################################

echo "==================================================================="
echo "  Basic Shell Commands Demonstration"
echo "==================================================================="
echo ""

# 1. Print Working Directory
echo "1. Current Directory (pwd):"
pwd
echo ""

# 2. List files in current directory
echo "2. List files (ls):"
ls
echo ""

# 3. List files in long format
echo "3. List files in long format (ls -l):"
ls -l
echo ""

# 4. List files sorted by size
echo "4. List files sorted by size (ls -lS):"
ls -lS
echo ""

# 5. List all files including hidden
echo "5. List all files including hidden (ls -a):"
ls -a
echo ""

# 6. List only directories
echo "6. List only directories (ls -d */):"
ls -d */ 2>/dev/null || echo "No subdirectories found"
echo ""

# 7. Demonstrate paths with spaces
echo "7. Working with paths containing spaces:"
mkdir -p "demo folder" 2>/dev/null
echo "Created directory: 'demo folder'"
ls -d "demo folder"
cd "demo folder"
echo "Changed into: $(pwd)"
cd ..
echo ""

# 8. Demonstrate cat command - creating file
echo "8. Creating a file using cat > (redirection):"
cat > "demo folder/example.txt" << 'EOF'
Hello, Linux!
This is line 2.
This is line 3.
EOF
echo "✓ Created demo folder/example.txt"
echo ""

# 9. Display file contents with cat
echo "9. Display file contents (cat):"
cat "demo folder/example.txt"
echo ""

# 10. Display with line numbers
echo "10. Display with line numbers (cat -n):"
cat -n "demo folder/example.txt"
echo ""

# 11. Demonstrate cat >> (append)
echo "11. Appending to file (cat >>):"
cat >> "demo folder/example.txt" << 'EOF'
Appended line 4.
EOF
echo "✓ Appended to demo folder/example.txt"
cat "demo folder/example.txt"
echo ""

# 12. Redirect output to file
echo "12. Redirecting ls output to a file (ls -lS > output):"
ls -lS > "demo folder/output_demo.txt"
echo "✓ Output saved to demo folder/output_demo.txt"
echo ""

# 13. Show contents of redirected file
echo "13. Contents of output_demo.txt:"
cat "demo folder/output_demo.txt"
echo ""

# 14. Demonstrate append with >>
echo "14. Appending to file (using >>):"
echo "--- End of listing ---" >> "demo folder/output_demo.txt"
echo "✓ Text appended to demo folder/output_demo.txt"
echo ""

# 15. Demonstrate concatenating files
echo "15. Concatenating multiple files:"
echo "File 1 content" > "demo folder/file1.txt"
echo "File 2 content" > "demo folder/file2.txt"
echo "Concatenating file1.txt and file2.txt:"
cat "demo folder/file1.txt" "demo folder/file2.txt"
echo ""

# 16. Demonstrate parent directory
echo "16. Parent directory contents (ls ..):"
ls ..
echo ""

# 17. Show home directory path
echo "17. Home directory (echo ~):"
echo ~
echo ""

# 18. Display manual page help (simulated)
echo "18. Getting help with man command:"
echo "Run: man ls"
echo "This would display the manual page for the 'ls' command."
echo "Press 'q' to quit the manual page."
echo ""

# 19. Demonstrate clear (commented out as it would clear the output)
echo "19. Clear screen command:"
echo "Run: clear"
echo "This would clear the terminal screen."
echo "Keyboard shortcut: Ctrl+L"
echo ""

# 20. Explain Ctrl+D
echo "20. EOF signal (Ctrl+D):"
echo "When using 'cat' without arguments or 'cat > file',"
echo "press Ctrl+D to send EOF (End Of File) signal."
echo "This tells the program no more input is coming."
echo ""

# Clean up demo files
echo "==================================================================="
echo "  Cleaning up demo files..."
echo "==================================================================="
rm -rf "demo folder"
echo "✓ Removed demo folder and its contents"
echo ""

echo "==================================================================="
echo "  Demonstration Complete!"
echo "==================================================================="
echo ""
echo "Key Concepts Covered:"
echo "  • pwd         - Print working directory"
echo "  • ls          - List files and directories"
echo "  • cd          - Change directory (use: cd <directory>, cd .., cd ~)"
echo "  • cat         - Display and concatenate files"
echo "  • cat -n      - Number lines in output"
echo "  • cat > file  - Create/overwrite file from input"
echo "  • cat >> file - Append to file from input"
echo "  • clear       - Clear terminal screen"
echo "  • >           - Redirect output to file (overwrites)"
echo "  • >>          - Append output to file"
echo "  • \" \"         - Quote paths with spaces"
echo "  • man         - Display manual pages"
echo "  • Ctrl+D      - Send EOF signal"
echo ""
echo "Shell → Kernel → Hardware Flow:"
echo "  User → Shell → Command/Program → Kernel → Hardware"
echo ""
echo "For more information, see the documentation in the commands/ folder."
echo ""