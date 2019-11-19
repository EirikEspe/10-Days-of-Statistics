# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify data for number of elements and numbers going into array(X)
N <- as.numeric(data[[1]])
X <- as.numeric(data[[2]])

# Print standard deviation and adjusting denominator from N-1 to N
# Rounded to a scale of 1 decimal place 
cat(round(sd(X) * sqrt((N-1) / N), 1))