# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for percentage of defective pistons and
# size of the batch of pistons
# [[1]] refer to our input list, that is of length 1. The subsequent [1] refer
# to which element in this list we want to access.
defPistons <- as.numeric(data[[1]][1])/100
batchsize <- as.numeric(data[[1]][2])


# Find the probability that a batch of 10 pistons will contain
# no more than 2 rejects
output1 <- pbinom(q = 2, size = batchsize, prob = defPistons, lower.tail = TRUE)

# Find the probability that a batch of 10 pistons will contain
# at least 2 rejects
output2 <- pbinom(q = 1, size = batchsize, prob = defPistons, lower.tail = FALSE)

# Print the output, rounded to a scale of 3 decimal places
cat(round(output1, 3), round(output2, 3), sep = "\n")