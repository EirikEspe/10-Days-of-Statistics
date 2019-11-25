# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for mean number of repairs for machine A and machine B
meanA <- as.numeric(data[[1]][1])
meanB <- as.numeric(data[[1]][2])


# Expected daily cost of machine A and machine B
## Using the special case for the expectation of a squared Poisson random variable
CA <- 160 + 40*(meanA + meanA^2)
CB <- 128 + 40*(meanB + meanB^2)

# Print the ouput, rounded to a scale of 3 decimal places
cat(format(round(CA, 3), nsmall = 3), format(round(CB, 3), nsmall = 3), sep = "\n")
