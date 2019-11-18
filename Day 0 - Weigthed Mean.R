# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")


# Specify data for array(X) and weights(W)
X <- as.numeric(data[[2]])
W <- as.numeric(data[[3]])


# Print weighted mean, formatted with a scale of 1 decimal place
cat(format(round(weighted.mean(X, W), 1), nsmall = 1), sep = "\n") 