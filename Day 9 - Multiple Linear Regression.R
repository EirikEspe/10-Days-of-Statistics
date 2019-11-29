# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for number of observed features(m) and
# number of features sets studied(n)
m <- as.numeric(data[[1]][1])
n <- as.numeric(data[[1]][2])


### Train set

# Specify the input data for the features and the target variable
## First - create empty data frame
trainset <- data.frame(matrix(ncol = m+1, nrow = n))

## Rename target variable to Y
names(trainset)[ncol(trainset)] <- "Y"


## Specify input for the features and the target variable(Y)
for (i in 1:n) {
  trainset[i, ] <- as.numeric(data[[i+1]])
}


### Test set

# Specify number of feature sets for the test set(q)
q <- as.numeric(data[[n+2]])


# Specify the input data for the features in test set
## Create empty data frame
testset <- data.frame(matrix(ncol = m, nrow = q))

## Specify input for the features in test set
for (i in 1:q) {
  testset[i, ] <- as.numeric(data[[i+n+2]])
}


# Create model for multiple linear regression
model <- lm(Y ~ ., data = trainset)

# Create prediction
prediction <- predict(object = model, newdata = testset)

# Print the predicted values
cat(format(round(prediction, 2), nsmall = 2), sep = "\n")