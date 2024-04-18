#!/bin/bash

# Function to print a line separator
print_separator() {
    printf "+------+-----------------------+\n"
}

# Function to print table header with spaces
print_header() {
    printf "| Year |    Salary Scale        |\n"
}

# Prompt the user to enter starting salary, number of points, and salary increment
read -p "Enter starting salary: " starting_salary
read -p "Enter number of points on salary scale: " num_points
read -p "Enter salary increment: " increment

# Ask if the employee is a manager
read -p "Is the employee a manager? (yes/no): " is_manager

# Define the number of increments per year based on manager status
if [[ "$is_manager" == "yes" ]]; then
    increments_per_year=2
else
    increments_per_year=1
fi

# Print table header with spaces
print_separator
print_header
print_separator

# Calculate and display salary scales for each year
current_year=$(date +%Y)
for (( year=current_year; year<current_year+num_points; year++ )); do
    # Calculate salary for the current year
    salary=$(bc <<< "scale=2; $starting_salary + ($year - $current_year) * $increment * $increments_per_year")
    # Print year and corresponding salary scale
    printf "| %4d |    $%9.2f          |\n" "$year" "$salary"
done

# Print footer indicating the author with padding spaces
echo "+---------------------------------------+"
echo "|       Salary Scale Table program by Dylan Boyle       |"
echo "+---------------------------------------+"
