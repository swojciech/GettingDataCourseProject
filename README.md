The accompanying script (run_analysis.R) performs the following:

1. Reads in data on variable names, study subjects, subject activities, and equipment measurements for test and train groups
2. Combines test and train group data into one dataset
3. Labels columns
4. Extracts variables and data featuring mean and standard deviation
5. Replaces numeric codes used to designate activities performed by study subjects with descriptive names
6. Transforms variable names for readability
7. Calculates average of mean- and standard deviation-featuring variables by "subject" and "activity" variables
