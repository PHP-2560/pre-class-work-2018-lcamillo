### Part 1

# 1)

exp.draws.1 = rexp(n = 200)
mean(exp.draws.1) #0.9865691
sd(exp.draws.1) #0.986614

# 2)

exp.draws.0.2 = rexp(n = 200, rate = 0.2)
mean(exp.draws.0.2) #0.9865691
sd(exp.draws.0.2) #0.986614

exp.draws.5 = rexp(n = 200, rate = 5)
mean(exp.draws.5) #0.2228897
sd(exp.draws.5) #0.248705

exp.draws.7.3 = rexp(n = 200, rate = 7.3)
mean(exp.draws.7.3) #0.1198547
sd(exp.draws.7.3) #0.1190882

exp.draws.10 = rexp(n = 200, rate = 10)
mean(exp.draws.10) #0.1055025
sd(exp.draws.10) #0.101346

# 3)
# a-
hist(exp.draws.1, main = "Histogram of random numbers from standard exponential distribution", xlab = "Random numbers")

# b-
plot(exp.draws.1, main = "Random numbers from standard exponential distribution", ylab = "Number")

# c-
plot(exp.draws.1, exp.draws.10, ylab = "Random numbers from exp distribution (rate = 10)", xlab = "Random numbers from standard exp distribution")

# 4)
expmeans = c(mean(exp.draws.1), mean(exp.draws.0.2), mean(exp.draws.5), mean(exp.draws.7.3), mean(exp.draws.10))
expsd = c(sd(exp.draws.1), sd(exp.draws.0.2), sd(exp.draws.5), sd(exp.draws.7.3), sd(exp.draws.10))

# a-
plot(c(1,0.2,5,7.3,10), expmeans, pch = 16, main = "Means of random numbers from exponential distributions", xlab = "Rate", ylab = "Mean")
#since the probability density function of the exponential distribution is F(x;λ) = e^-λx for x > 0, when we choose a bigger lambda (rate), 1/e^λ (because of the minus in the exponential) decreases. That is why the bigger the rate, the smaller the mean. For λ = 0.2, for instance, the mean of the vector is almost 5, whereas for λ = 10 it is almost 0.1. 

# b-
plot(c(1,0.2,5,7.3,10), expsd, pch = 16, main = "Sd of random numbers from exponential distributions", xlab = "Rate", ylab = "Sd")
#again, since the exponential probability distribution with a bigger rate is concentrated close to the left or 0, the standard deviation is also smaller, since the function is not very spread out. That is why the sd of rate = 0.2 is much bigger than for rate = 10, because it is more "spread out".

# c-
plot(expmeans, expsd, main = "Means vs Sd of random numbers from exponential distributions", xlab = "Mean", ylab = "Sd")
#both sd and mean for each case is roughly the same, since we can connect all the points in the graph with an almost perfect straight line. Therefore, for the distribution, mean ~= sd.

#Part 2

# 5)
# a-
big.exp.draws.1 = rexp(1100000)
mean(big.exp.draws.1) #0.9995333
sd(big.exp.draws.1) #0.9991349

#b-
h = hist(big.exp.draws.1, main = "Histogram of random numbers from standard exponential distribution", xlab = "Random numbers", xlim = c(0,10))

curve(dexp, xlim=c(0,10), main = "Standard exponential distribution", ylab = "Probability")
points(as.numeric(unlist(h[4])), as.numeric(unlist(h[3])), pch = 16)
#by comparing the histogram midpoints with the probability density function (the curve), we can see that it basically matches. That is because with a large enough amount of random numbers, we can get almost the exact probability distribution with very small differences.

#c-
biggerthan1 = big.exp.draws.1[which(big.exp.draws.1 > 1)]
mean(biggerthan1) #1.999477

#d-
big.exp.draws.1.mat = matrix(big.exp.draws.1 ,nrow = 1100, ncol = 1000)
mathist = hist(big.exp.draws.1.mat)
#the data gets stored in the matrix big.exp.draws.1.ma. Then, it gets plotted in the histogram and the summary of frequency, density, location of bars plotted, etc., is stored in the variable mathist.

#e-
mean(big.exp.draws.1.mat[,371]) #0.9948525

#f-
apply(big.exp.draws.1.mat, 2, mean)
hist(apply(big.exp.draws.1.mat, 2, mean))
#its shape is different because the values we are getting are not from the exponential distribution. They are simply from the distribution of the means of samples from the exponential distribution. The population mean mu is equal to 1. That is why the means of the columns surround that value as in a normal distribution with mean mu and sd as sd/sqrt(n). 








