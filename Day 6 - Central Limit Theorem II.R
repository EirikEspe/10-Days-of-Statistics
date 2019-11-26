# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for tickets available, number of students waiting to buy, 
# and mean and standard deviation of number of purchased tickets
tickets <- as.numeric(data[[1]])
nstudents <- as.numeric(data[[2]])
meanX <- as.numeric(data[[3]])
stdevX <- as.numeric(data[[4]])


# Find the probability that all students will be able to purchase tickets
output <- pnorm(q = tickets, mean = nstudents * meanX, sd = sqrt(nstudents) * stdevX)

# Print the output, rounded to a scale of 4 decimal places
cat(round(output, 4))