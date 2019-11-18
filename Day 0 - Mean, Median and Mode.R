# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify data for number of elements(N) and numbers going into array(X)
N <- as.numeric(data[[1]])
X <- as.numeric(data[[2]])

# Create a function for finding the mode
Mode <- function(z){
  a = table(z)
  return(names(a[which.max(a)]))
  }

# Print mean, median and mode
cat(round(mean(X), 1), sep = "\n")
cat(round(median(X), 1), sep = "\n")
cat(Mode(X), sep = "\n")