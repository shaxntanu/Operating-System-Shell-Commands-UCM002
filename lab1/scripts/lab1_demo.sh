#!/bin/bash

################################################################################
# lab1_demo.sh
# 
# Lab 1: Basic Shell Commands, Navigation, and Paths with Spaces
# This script demonstrates commands covered in Lab 1.
#
# Usage: bash lab1_demo.sh
################################################################################

echo "==================================================================="
echo "  Lab 1: Basic Shell Commands Demonstration"
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

# 7. Demonstrate parent directory
echo "7. Parent directory contents (ls ..):"
ls ..
echo ""

# 8. Show home directory path
echo "8. Home directory (echo ~):"
echo ~
echo ""

# 9. Navigate to parent directory
echo "9. Navigating with cd:"
echo "Current directory: $(pwd)"
echo "Going to parent directory (cd ..)"
cd ..
echo "New directory: $(pwd)"
cd - > /dev/null 2>&1
echo ""

# 10. Demonstrate paths with spaces
echo "10. Working with paths containing spaces:"
mkdir -p "lab1 demo folder" 2>/dev/null
echo "Created directory: 'lab1 demo folder'"
echo ""

echo "Listing the directory with double quotes:"
ls -d "lab1 demo folder"
echo ""

echo "Changing into the directory:"
cd "lab1 demo folder"
echo "Current directory: $(pwd)"
cd ..
echo ""

# 11. Different quoting methods
echo "11. Different ways to handle spaces in paths:"
echo "   Method 1: Double quotes - cd \"lab1 demo folder\""
echo "   Method 2: Single quotes - cd 'lab1 demo folder'"
echo "   Method 3: Backslash escaping - cd lab1\\ demo\\ folder"
echo ""

# 12. Creating files in directory with spaces
echo "12. Creating a file in directory with spaces:"
echo "Sample content for Lab 1" > "lab1 demo folder/readme.txt"
echo "✓ Created readme.txt in 'lab1 demo folder'"
echo ""

echo "Listing contents:"
ls -l "lab1 demo folder"
echo ""

# 13. Display manual page help (simulated)
echo "13. Getting help with man command:"
echo "Run: man ls"
echo "This displays the manual page for the 'ls' command."
echo "Use 'q' to quit the manual page."
echo ""

# 14. Demonstrate clear (explained, not executed)
echo "14. Clear screen command:"
echo "Run: clear"
echo "This clears the terminal screen."
echo "Keyboard shortcut: Ctrl+L"
echo ""

# Clean up demo files
echo "==================================================================="
echo "  Cleaning up demo files..."
echo "==================================================================="
rm -rf "lab1 demo folder"
echo "✓ Removed lab1 demo folder"
echo ""

echo "==================================================================="
echo "  Lab 1 Demonstration Complete!"
echo "==================================================================="
echo ""
echo "Commands Covered in Lab 1:"
echo "  • pwd             - Print working directory"
echo "  • cd              - Change directory"
echo "  • cd ..           - Move to parent directory"
echo "  • cd ~            - Move to home directory"
echo "  • ls              - List files and directories"
echo "  • ls -l           - Long format listing"
echo "  • ls -a           - Show hidden files"
echo "  • ls -lS          - List sorted by size"
echo "  • ls -d */        - List only directories"
echo "  • clear           - Clear terminal screen"
echo "  • \"path name\"     - Quote paths with spaces"
echo "  • 'path name'     - Quote paths with spaces"
echo "  • path\\ name      - Escape spaces in paths"
echo "  • man             - Display manual pages"
echo ""
echo "For detailed documentation, see lab1/commands/ folder."
echo ""
