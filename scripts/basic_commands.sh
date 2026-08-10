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

# 7. Redirect output to file
echo "7. Redirecting ls output to a file (ls -lS > output_demo.txt):"
ls -lS > output_demo.txt
echo "✓ Output saved to output_demo.txt"
echo ""

# 8. Show contents of redirected file
echo "8. Contents of output_demo.txt:"
cat output_demo.txt
echo ""

# 9. Append to file
echo "9. Appending to file (using >>):"
echo "--- End of listing ---" >> output_demo.txt
echo "✓ Text appended to output_demo.txt"
echo ""

# 10. Demonstrate parent directory
echo "10. Parent directory contents (ls ..):"
ls ..
echo ""

# 11. Show home directory path
echo "11. Home directory (echo ~):"
echo ~
echo ""

# 12. Display manual page help (simulated)
echo "12. Getting help with man command:"
echo "Run: man ls"
echo "This would display the manual page for the 'ls' command."
echo ""

# 13. Demonstrate clear (commented out as it would clear the output)
echo "13. Clear screen command:"
echo "Run: clear"
echo "This would clear the terminal screen."
echo ""

# Clean up demo file
echo "==================================================================="
echo "  Cleaning up demo file..."
echo "==================================================================="
rm -f output_demo.txt
echo "✓ Removed output_demo.txt"
echo ""

echo "==================================================================="
echo "  Demonstration Complete!"
echo "==================================================================="
echo ""
echo "Key Concepts Covered:"
echo "  • pwd    - Print working directory"
echo "  • ls     - List files and directories"
echo "  • cd     - Change directory (use: cd <directory>, cd .., cd ~)"
echo "  • clear  - Clear terminal screen"
echo "  • >      - Redirect output to file (overwrites)"
echo "  • >>     - Append output to file"
echo "  • man    - Display manual pages"
echo ""
echo "For more information, see the documentation in the commands/ folder."
echo ""
