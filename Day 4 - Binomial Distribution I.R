# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data ratio for boys to girls
# [[1]] refer to our input list, that is of length 1. The subsequent [1] refer
# to which element in this list we want to access.
ratioB <- as.numeric(data[[1]][1])
ratioG <- as.numeric(data[[1]][2])

# Convert the ratio to probability
probB <- ratioB/(ratioB + ratioG)

# Find the proportion of families with at least 3 boys
# for families with 6 children.
# Notice that when we set the argument lower.tail = FALSE,
# we have to set q = 2, in order to include q = 3.
output <- pbinom(q = 2, size = 6, prob = probB, lower.tail = FALSE)

# Print the output, rounded to a scale of 3 decimal places
cat(round(output, 3))