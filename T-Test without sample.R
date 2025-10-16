#one sample

# Given summary statistics
n <- 8
xbar <- 72.5
s <- 4.2

# Hypothesized mean
mu0 <- 75

# Calculate standard error
SE <- s / sqrt(n)

# t statistic
t_stat <- (xbar - mu0) / SE

# Degrees of freedom
df <- n - 1

# p-value (one-sided lower tail)
p_val <- pt(t_stat, df)

cat("t statistic =", t_stat, "\n")
cat("Degrees of freedom =", df, "\n")
cat("p-value =", p_val, "\n")

# Decision at alpha = 0.05
alpha <- 0.05
if (p_val < alpha) {
  cat("Reject H0: There is significant evidence that mu < 75\n")
} else {
  cat("Fail to reject H0: No significant evidence at alpha =", alpha, "\n")
}





# Given summary statistics
n1 <- 6
xbar1 <- 115.7
s1 <- 5.03

n2 <- 6
xbar2 <- 129.3
s2 <- 5.38

# Hypothesized difference
delta0 <- -10

# Calculate standard error
SE <- sqrt((s1^2 / n1) + (s2^2 / n2))

# t statistic
t_stat <- ((xbar1 - xbar2) - delta0) / SE

# Degrees of freedom (Welch-Satterthwaite)
df <- ((s1^2/n1 + s2^2/n2)^2) / (((s1^2/n1)^2/(n1-1)) + ((s2^2/n2)^2/(n2-1)))

# p-value (one-sided lower tail)
p_val <- pt(t_stat, df)

cat("t statistic =", t_stat, "\n")
cat("Degrees of freedom =", df, "\n")
cat("p-value =", p_val, "\n")

# Decision at alpha = 0.01
alpha <- 0.01
if (p_val < alpha) {
  cat("Reject H0: There is significant evidence that mu1 - mu2 < -10\n")
} else {
  cat("Fail to reject H0: No significant evidence at alpha =", alpha, "\n")
}



