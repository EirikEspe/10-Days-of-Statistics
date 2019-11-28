# Enter your code here. Read input from STDIN. Print output to STDOUT

# Get input
input <- file("stdin")
data <- strsplit(readLines(input, warn = FALSE), split = " ")

# Specify the input data for math aptitude scores(X)
X <- rep(0, length(data))
for (i in 1:length(data)){
  X[i] <- as.numeric(data[[i]][1])
}

# Specify the data for statistics scores(Y)
Y <- rep(0, length(data))
for (i in 1:length(data)){
  Y[i] <- as.numeric(data[[i]][2])
}


# Create the linear model
model <- lm(Y ~ X)

# Create prediction
prediction <- predict(object = model, newdata = data.frame(X = 80))

# Print the predicted value
cat(round(prediction, 3))