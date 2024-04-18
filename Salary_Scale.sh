#!/bin/bash

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

# Print header for the salary scale table
echo "Year | Salary Scale"
