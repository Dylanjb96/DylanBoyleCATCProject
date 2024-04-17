#!/bin/bash
output_file="DylanBoyle.txt"

echo "Date Command Output:" >> $output_file
date >> output_file
echo "----------------------------------------" >> $output_file

# Command 2: hostname
echo "Hostname Command Output:" >> $output_file
hostname >> $output_file
echo "----------------------------------------" >> $output_file

# Command 3: arch
echo "Architecture Command Output:" >> $output_file
arch >> $output_file
echo "----------------------------------------" >> $output_file

# Command 4: uname -a
echo "Uname Command Output:" >> $output_file
uname -a >> $output_file
echo "----------------------------------------" >> $output_file

# Command 5: uptime
echo "Uptime Command Output:" >> $output_file
uptime >> $output_file
echo "----------------------------------------" >> $output_file

# Command 6: whoami
echo "Whoami Command Output:" >> $output_file
whoami >> $output_file
echo "----------------------------------------" >> $output_file

# Command 7: who
echo "Who Command Output:" >> $output_file
who >> $output_file
echo "----------------------------------------" >> $output_file

# Command 8: w
echo "W Command Output:" >> $output_file
w >> $output_file
echo "----------------------------------------" >> $output_file

# Command 9: top
echo "Top Command Output:" >> $output_file
top >> $output_file
echo "----------------------------------------" >> $output_file

# Command 10: history
echo "History Command Output:" >> $output_file
history >> $output_file
echo "----------------------------------------" >> $output_file

echo "All commands executed and output appended to file: $output_file"
