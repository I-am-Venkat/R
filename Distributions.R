#A normal distribution items with mean of 100 and with standard deviation of 15.if an item randomly selected what is the probability the item should be selected less than 110 a, what is the probability for greater than 125.compute them at 90 th percentile



# Given parameters
mean <- 100
sd <- 15

# (a) Probability that X < 110
p_less_110 <- pnorm(110, mean, sd)
cat("P(X < 110) =", p_less_110, "\n")

# (b) Probability that X > 125
p_greater_125 <- 1 - pnorm(125, mean, sd)
cat("P(X > 125) =", p_greater_125, "\n")

# (c) 90th percentile
percentile_90 <- qnorm(0.9, mean, sd)
cat("90th Percentile =", percentile_90,"\n")


# Binomial

n <- 10      # number of trials
p <- 0.5     # probability of success
x <- 6       # number of successes

# P(X = 6)
prob_exact <- dbinom(x, n, p)

# P(X <= 6) cumulative
prob_cum <- pbinom(x, n, p)

cat("P(X = 6) =", prob_exact, "\n")
cat("P(X <= 6) =", prob_cum, "\n")


#Poisson
lambda <- 5   # average rate
x <- 3        # number of events

# P(X = 3)
prob_exact <- dpois(x, lambda)

# P(X <= 3)
prob_cum <- ppois(x, lambda)

cat("P(X = 3) =", prob_exact, "\n")
cat("P(X <= 3) =", prob_cum, "\n")


# Normal distribution

mean <- 100
sd <- 15

# 1. P(X < 110)
p_less_110 <- pnorm(110, mean, sd)

# 2. P(X > 125)
p_greater_125 <- 1 - pnorm(125, mean, sd)

# 3. 90th percentile
p90 <- qnorm(0.90, mean, sd)

cat("P(X < 110) =", p_less_110, "\n")
cat("P(X > 125) =", p_greater_125, "\n")
cat("90th percentile value =", p90, "\n")
