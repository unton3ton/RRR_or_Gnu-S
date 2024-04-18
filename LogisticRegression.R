# R program to illustrate
# Logistic Regression

# Using mtcars dataset 
# To create the logistic model
model <- glm(formula = vs ~ wt, 
             family = binomial,
             data = mtcars)

# Creating a range of wt values
x <- seq(min(mtcars$wt), 
         max(mtcars$wt), 
         0.01)

# Predict using weight
y <- predict(model, list(wt = x), 
             type = "response")

# Print model
print(model)

# Output to be present as PNG file
png(file = "LogRegGFG.png")

# Plot
plot(mtcars$wt, mtcars$vs, pch = 16,
     xlab = "Weight", ylab = "VS")
lines(x, y)
grid()

# Saving the file
dev.off()