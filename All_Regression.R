
# Linear regressio
# Data
x <- c(18, 20, 23, 25, 28, 30, 33, 35, 37)
y <- c(120, 130, 135, 150, 160, 170, 190, 200, 210)

# Linear regression model
model <- lm(y ~ x)

# Display summary of the model
summary(model)

# Predicted values
pred <- predict(model)

# Plot the data and regression line
plot(x, y, main="Regression: Temperature vs Consumption",
     xlab="Temperature (°C)", ylab="Consumption (kWh x 10³)",
     pch=19, col="blue")
abline(model, col="red", lwd=2)



# Multiple Linear Regression
x1 <- c(20,22,25,27,30,32,34,36,38)
x2 <- c(60,65,68,70,72,74,75,78,80)
y <- c(130,140,150,160,175,190,200,215,225)

model2 <- lm(y ~ x1 + x2)
summary(model2)



# Polynomial Regression (Quadratic)
x <- c(1,2,3,4,5,6,7)
y <- c(30,35,50,70,100,140,200)

model3 <- lm(y ~ poly(x, 2))  # 2nd degree polynomial
summary(model3)

# Plot
plot(x, y, pch=19, col="blue",
     xlab="Experience (Years)", ylab="Salary (k)",
     main="Polynomial Regression")
lines(sort(x), predict(model3, data.frame(x=sort(x))), col="red", lwd=2)




# Logistic Regression
x <- c(25, 30, 35, 40, 45, 50, 55, 60)
y <- c(0, 0, 0, 1, 1, 1, 1, 1)

model4 <- glm(y ~ x, family = binomial)
summary(model4)

# Predicted probabilities
pred <- predict(model4, type = "response")
print(pred)

# Plot
plot(x, y, pch=19, col="blue", xlab="Income", ylab="Buy (0/1)",
     main="Logistic Regression")
lines(sort(x), pred[order(x)], col="red", lwd=2)

