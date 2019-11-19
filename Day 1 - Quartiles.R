# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify data for number of elements and numbers going into array(X)
size = as.numeric(data[[1]])
X <- as.numeric(data[[2]])

## Find quartiles
# Ordering the array and define start and ending point of second quartile
X <- sort(X, decreasing = FALSE)
Point1 <- floor(size / 2)
Point2 <- ceiling(size / 2) + 1

# Define ranges where we will find Q1, Q2 and Q3
Q1 <- X[1:Point1]
Q2 <- X[Point1:Point2]
Q3 <- X[Point2:size]

# Print first, second and third quartile
cat(median(Q1), median(Q2), median(Q3), sep = "\n")