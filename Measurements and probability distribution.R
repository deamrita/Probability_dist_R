#measurements
duration <- faithful$eruptions
waiting <- faithful$waiting
mean(duration)
median(duration)
mode(duration)
hist(duration)

#Quartile
quantile(duration)
range(duration)
quantile(duration, c(0.3,0.5,0.9))

#IQR  
IQR(duration) #0.75-0.25

#plot central tendency
boxplot(duration,horizontal = TRUE)

#spread
var(duration)
sd(duration)

#range
lower_range <- mean(duration) - (3*sd(duration))
upper_range <- mean(duration) + (3*sd(duration))

#covariance/correlation
cov(duration,waiting) #+slope
cor(duration,waiting)

#skewness and kurtosis
install.packages("moments")
skewness(duration)
skewness(waiting)
kurtosis(duration)
kurtosis(waiting)

#summary
mtcars
summary(mtcars)

#probability distribution
#----------#-----------#
#discrete distribution
#----------#-----------#
#binomial distribution 
dbinom(4,10,0.5) #probability of getting 4 heads with no. of trials 10
dbinom(4,10,0.5,FALSE) #probability of getting more than 4 heads with no. of trials 10
pbinom(4,10,0.5) #atmost 4 heads cumulative
1 - pbinom(4,10,0.5) #atleast 4 heads

#poisson distribution n= too large, p= too small, lambda = n*p (avg no of events per time interval)
#accident in airplane
ppois(16, lambda=12)#lower tail poison (<=16)
ppois(16, lambda=12, lower.tail = FALSE) #(>16)

#continuous distribution
#----------#-----------#
#unifrom distribution
x <- runif(10)
hist(x)
y <- runif(1000,min=5,max=9)
hist(y)

#exponential distribution decay rate
pexp(2,rate=0.4)

#normal distribution
pnorm(154, 161, 7) #prob(height<154 cm)
pnorm(154, 161, 7, lower.tail = FALSE) #prob(height>=154 cm)

#chisquare
qchisq(.95,2)

#student t distribution
# two random variables one normal dist z one chisq dist y independent
# t = z/sqrt(Y/m) m is degree of freedom

qt(c(0.056,0.953),df=5)

#f distribution
qf(0.95,2,3)







































