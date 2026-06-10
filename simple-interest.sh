#!/bin/bash
# A simple script to calculate simple interest

echo "--- Simple Interest Calculator ---"

# Prompt user for inputs
read -p "Enter the principal amount: " principal
read -p "Enter the annual rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest using the formula: (Principal * Rate * Time) / 100
# Using 'bc' to handle floating-point numbers and format to 2 decimal places
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "----------------------------------"
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Calculated Simple Interest: $interest"
