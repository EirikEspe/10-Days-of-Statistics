# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for size of datasets and 
# numbers going into X and Y
n <- as.numeric(data[[1]])
X <- as.numeric(data[[2]])
Y <- as.numeric(data[[3]])


# Find the Spearman's rank correlation coefficient
correlation <- cor(X, Y, method = "spearman")

# Print the correlation, rounded to a scale of 3 decimal places
cat(round(correlation, 3))