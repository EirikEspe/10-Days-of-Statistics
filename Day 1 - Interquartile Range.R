# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify data for number of elements, numbers going into array(X) and frequencies
n <- as.numeric(data[[1]])
X <- as.numeric(data[[2]])
Freq <- as.numeric(data[[3]])

# Repeat data from set X at the respective frequencies specified by F
numbers <- rep(X, Freq)

# How many data points?
lengthN <- length(numbers)

## Find quartiles
# Ordering the array and define start and ending point of second quartile
numbers <- sort(numbers, decreasing = FALSE)
Point1 <- floor(lengthN / 2)
Point2 <- ceiling(lengthN / 2) + 1

# Define ranges where we will find first and third quartile
Q1 <- numbers[1:Point1]
Q3 <- numbers[Point2:lengthN]

# Print interquartile range rounded to a scale of 1 decimal place
cat(format(round(median(Q3) - median(Q1), 1), nsmall = 1)) 