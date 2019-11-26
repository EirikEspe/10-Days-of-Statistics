# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for maximum weight, number of boxes,
# mean and standard deviation
maxWeight <- as.numeric(data[[1]])
nboxes <- as.numeric(data[[2]])
meanX <- as.numeric(data[[3]])
stdevX <- as.numeric(data[[4]])


# Find the probability that all boxes can be safely transported
# with the freight elevator
output <- pnorm(q = maxWeight, mean = nboxes * meanX, sd = sqrt(nboxes) * stdevX)

# Print the output, rounded to a scale of 4 decimal places
cat(round(output, 4))
