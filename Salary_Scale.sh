#!/bin/bash

# Function to print a line separator
print_separator() {
    printf "+------+-----------------------+-----------------------+\n"
}

# Function to print table header with spaces
print_manager_header() {
    printf "| Year |    Salary Scale        |    January    |    July    |\n"
}

# Function to print table header with spaces for employee
print_employee_header() {
    printf "| Year |    Salary Scale        |    January    |\n"
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

if [[ "$is_manager" == "yes" ]]; then
    print_manager_header
else
    print_employee_header
fi

print_separator

# Initialize January and July salaries
january_salary=$starting_salary
july_salary=$(bc <<< "scale=2; $starting_salary + $increment / 2")

# Calculate and display salary scales for each year
current_year=$(date +%Y)
for (( year=current_year; year<current_year+num_points; year++ )); do
    # Print year, corresponding salary scale, January salary, and July salary for manager table
    if [[ "$is_manager" == "yes" ]]; then
        printf "| %4d |    $%9.2f          |    $%9.2f   |   $%9.2f   |\n" "$year" "$january_salary" "$january_salary" "$july_salary"
    else
        # Print year, corresponding salary scale, and January salary for employee table
        printf "| %4d |    $%9.2f          |    $%9.2f   |\n" "$year" "$january_salary" "$january_salary"
    fi
    
    # Increment January and July salaries
    january_salary=$(bc <<< "scale=2; $january_salary + $increment")
    july_salary=$(bc <<< "scale=2; $july_salary + $increment")
done

# Print footer indicating the author with padding spaces
echo "+-------------------------------------------------------------------+"
echo "|       Salary Scale Table program by Dylan Boyle                   |"
echo "+-------------------------------------------------------------------+"

