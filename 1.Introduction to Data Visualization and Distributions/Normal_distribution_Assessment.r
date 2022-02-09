#What proportion of the data is between 69 and 72 inches (taller than 69 but shorter or equal to 72)? A proportion is between 0 and 1.
library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]

mean(x>69 & x<=72)

#using pnorm 
x <- heights$height[heights$sex=="Male"]
avg <- mean(x)
stdev <- sd(x)

pnorm(72, avg, stdev) - pnorm(69, avg, stdev)

exact <- mean(x > 79 & x <= 81)
approx<- pnorm(81, mean(x), sd(x)) - pnorm(79, mean(x), sd(x))
exact/approx


# use pnorm to calculate the proportion over 7 feet (7*12 inches)
mu <- 69
sigma <- 3

1-pnorm(7*12,mu,sigma)

#number of people in the world that are 7feet taller

p<- 1-pnorm(7*12,69,3)

N <-round(p*10^9)

#calculate the proportion of the world's 18 to 40 year old seven footers that are in the NBA.
10/N

## Change to lebron's heigth 
p <- 1 - pnorm(6*12+8, 69, 3)
N <- round(p * 10^9)
150/N

#As seen in exercise 3, the normal approximation tends to underestimate the extreme values. It's possible that there are more seven footers than we predicted.