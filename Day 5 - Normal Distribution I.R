# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for mean and standard deviation for X,
# the value we want to find the probability for question 1 and
# the range with values we want the probabilities for question 2
meanX <- as.numeric(data[[1]][1])
stdevX <- as.numeric(data[[1]][2])
X1 <- as.numeric(data[[2]])
lX2 <- as.numeric(data[[3]][1])
uX2 <- as.numeric(data[[3]][2])


# Find the probability that a car can be assembled in less than 19.5 hours
output1 <- pnorm(q = X1, mean = meanX, sd = stdevX, lower.tail = TRUE)


# Find the probability that the car can be assembled in between 20 and 22 hours
output2 <- pnorm(q = uX2, mean = meanX, sd = stdevX, lower.tail = TRUE) -
  pnorm(q = lX2, mean = meanX, sd = stdevX, lower.tail = TRUE)


# Print the output, rounded to a scale of 3 decimal places
cat(round(output1, 3), round(output2, 3), sep = "\n")