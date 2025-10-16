# One sample Z test

# X_bar=980
# sigma=80
# n=50
# H0:μ=1000vsHa:μ<1000


# Given values
xbar <- 980       # sample mean
mu0 <- 1000       # hypothesized mean
sigma <- 80       # population SD
n <- 50           # sample size
alpha <- 0.05

# Standard error
SE <- sigma / sqrt(n)

# Z statistic

z_stat <- (xbar - mu0) / SE

# p-value (one-sided lower tail)
p_val <- pnorm(z_stat)

cat("Z statistic =", z_stat, "\n")
cat("p-value =", p_val, "\n")

# Decision
if (p_val < alpha) {
  cat("Reject H0: Mean lifetime is significantly less than 1000\n")
} else {
  cat("Fail to reject H0: No significant evidence at alpha =", alpha, "\n")
}


# 2 sample z-test

# Given values
xbar1 <- 20
xbar2 <- 22
sigma1 <- 4
sigma2 <- 5
n1 <- 40
n2 <- 50
alpha <- 0.05
delta0 <- 0

# Standard error
SE <- sqrt((sigma1^2 / n1) + (sigma2^2 / n2))

# Z statistic
z_stat <- ((xbar1 - xbar2) - delta0) / SE

# p-value (two-sided)
p_val <- 2 * pnorm(-abs(z_stat))

cat("Z statistic =", z_stat, "\n")
cat("p-value =", p_val, "\n")

# Decision
if (p_val < alpha) {
  cat("Reject H0: There is a significant difference between the two machines\n")
} else {
  cat("Fail to reject H0: No significant difference at alpha =", alpha, "\n")
}
