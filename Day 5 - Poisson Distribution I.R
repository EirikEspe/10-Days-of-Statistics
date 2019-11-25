# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for mean of the Poisson distribution and
# the value we want the probability for
meanX <- as.numeric(data[[1]])
X <- as.numeric(data[[2]])


# Find the probability that the random variable is equal to value specified in X
output <- dpois(x = X, lambda = meanX)

# Print the output, rounded to a scale of 3 decimal places
cat(round(output, 3))