# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for sample size, population mean, population standard deviation,
# distribution percentage we want to cover and z-score. 
sample <- as.numeric(data[[1]])
meanX <- as.numeric(data[[2]])
stdevX <- as.numeric(data[[3]]) 
interval <- as.numeric(data[[4]])
z_score <- as.numeric(data[[5]])


# Find the value of A, the lower level of the interval
outputA <- meanX - (z_score * stdevX / sqrt(sample))

# Find the value of B, the upper level of the interval
outputB <- meanX + (z_score * stdevX / sqrt(sample))

# Print the output, rounded to a scale of 2 decimal places
cat(round(outputA, 2), round(outputB, 2), sep = "\n")
