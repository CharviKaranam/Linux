#!/bin/bash

# Sample data file
cat > data.txt <<EOL
101 John 45000
102 Alice 55000
103 Bob 32000
104 Mary 60000
105 David 48000
EOL

# Print entire file
awk '{print}' data.txt

# Print specific column
awk '{print $2}' data.txt

# Print name and salary with formatting
awk '{printf "Name: %s, Salary: %s\n", $2, $3}' data.txt

# Filter records with salary greater than 40000
awk '$3 > 40000 {print $2, $3}' data.txt

# Count total number of employees
awk 'END {print "Total Employees:", NR}' data.txt

# Calculate total salary
awk '{sum += $3} END {print "Total Salary:", sum}' data.txt

# Find average salary
awk '{sum += $3} END {print "Average Salary:", sum/NR}' data.txt

# Display highest salary
awk 'BEGIN {max=0} {if ($3 > max) max=$3} END {print "Highest Salary:", max}' data.txt

# Search for a specific employee
awk '$2 == "Mary" {print "Record Found:", $0}' data.txt

# Use field separator
awk -F " " '{print "Employee ID:", $1, "| Name:", $2, "| Salary:", $3}' data.txt

# Delete temporary data file
rm data.txt

# Log completion
echo "AWK command practice completed at $(date)" >> ~/awk_practice_log.txt
