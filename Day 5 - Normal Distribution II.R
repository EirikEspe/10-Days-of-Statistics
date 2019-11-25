# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for mean and standard deviation for the exam
# the number associated with question 1 and
# the number associated with question 2 and 3
meanX <- as.numeric(data[[1]][1])
stdevX <- as.numeric(data[[1]][2])
X1 <- as.numeric(data[[2]])
X2 <- as.numeric(data[[3]])


# Find the percentage of students  that scored higher than 80
output1 <- pnorm(q = X1, mean = meanX, sd = stdevX, lower.tail = FALSE)

# Find the percentage that passed the test
output2 <- pnorm(q = X2, mean = meanX, sd = stdevX, lower.tail = FALSE)

# Find the percentage that failed the test
output3 <- pnorm(q = X2, mean = meanX, sd = stdevX, lower.tail = TRUE)

# Print the output as percentages, rounded to a scale of 2 decimal places
cat(round(output1*100, 2), round(output2*100, 2), round(output3*100, 2), sep = "\n")