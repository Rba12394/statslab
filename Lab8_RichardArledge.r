#Homework for Lab 8

#-------------------------------------------------------------------------
#Question 1

#Part A

xbar = .953
n = 45
stddev = .25
conf = .95
z = qnorm((1+conf)/2,0,1); z
interval <- c(xbar - z*(stddev/sqrt(n)),xbar + z*(stddev/sqrt(n))); interval

conf = .99
z = qnorm((1+conf)/2,0,1); z
interval <-  c(xbar - z*(stddev/sqrt(n)),xbar + z*(stddev/sqrt(n))); interval
#We can say that we are 95% confident that the population mean mu falls
#in the interval (.8799565, 1.0260435)

#Part B

ybar = .953
n = 75
stddev = .25
conf = .95
z = qnorm((1+conf)/2,0,1); z
interval <- c(ybar - z*(stddev/sqrt(n)),ybar + z*(stddev/sqrt(n))); interval

conf = .99
z = qnorm((1+conf)/2,0,1); z
interval <-c(ybar - z*(stddev/sqrt(n)),ybar + z*(stddev/sqrt(n))); interval

#We can say that we are 95% confident that the population mean mu falls
#in the interval (.8964207, 1.0095793)
#This is a clear example of how the higher number of trials leads to better data as the
#n=75 interval spans less space than that of n=45

#-----------------------------------------------------------------------
#Question 2

values <- c(.593,.142,.329,.0691,.231,.793,.519,.392,.418)
xbar = mean(values)
n = length(values)
stddev = sqrt((1/(n-1))*sum((values-xbar)^2))
conf = .95
t = qt((1+conf)/2,n-1)
interval <- c(xbar - t*(stddev/sqrt(n)),xbar + t*(stddev/sqrt(n))); interval

conf = .99
t = qt((1+conf)/2,n-1)
interval <- c(xbar - t*(stddev/sqrt(n)),xbar + t*(stddev/sqrt(n))); interval

#We can say that we are 95% confident that the population mean mu falls
#in the interval (.2123846,.5623043)

#A 99% confidence interval means that there is a 99% chance that the actual
#mean will fall within three standard deviations of the sample mean

#-----------------------------------------------------------------------
#Question 3

values <- c(6,7,7,11,6,9,9,3,5,4,4,8,1,8,2,6,4,5,3,3,2,12,4,10,8,2,5,3,3,3)
xbar = mean(values)
n = 30

#Part A

#For Poisson distribution E[X] = lambda
#so E[X] = xbar = mean(values)
xbar

#Part B

stddev = 2.366
conf = .95
z = qnorm((1+conf)/2,0,1); z
interval <-  c(xbar - z*(stddev/sqrt(n)),xbar + z*(stddev/sqrt(n))); interval

#------------------------------------------------------------------------
#Question 4

f_pgivenx = function(r){f = function(t){dunif(t,0,1)*dgeom(r[2],t)};
C = integrate(f,0,1)$value;
return(f(r[1])/C)}

h = seq(0.01,1,0.01)
par(mfrow=c(1,2))
plot(c(0,0,1), c(0,10,10))
for(i in 1:length(h))
{y = f_pgivenx(c(h[i],2))
points(head[i],y)}

plot(c(0,0,1), c(0,10,10))
for(i in 1:length(h))
{y = f_pgivenx(c(h[i],10))
points(h[i],y)}

