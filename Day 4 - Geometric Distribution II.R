# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for probability of defective products and
# the inspection number
defProducts <- as.numeric(data[[1]][1]) / as.numeric(data[[1]][2])
nthinspection <- as.numeric(data[[2]])


# Find the probability that the 1st defect is found during the first nth
# inspections 
output <- pgeom(q = nthinspection - 1, prob = defProducts)

# Print the output, rounded to a scale of 3 decimal places
cat(round(output, 3))