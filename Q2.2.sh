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


