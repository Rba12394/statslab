#Lab 6 problems

#1

#part a
dbinom(0,6000,1/3250)
#chose the binomial distribution because there is either a typo or there is not

#part b
#part b1
dpois(8,10)
#used the Poisson distribution becuase the average is given and there is a large number of trials

#part b2
ppois(12,10)

#part c
#part c1
dgeom(3,.532)

#part c2
pgeom(4,.532)

#2

#part a
a = pbinom(0:25,25,.35);plot(a)

#part b
b = pgeom(0:25,.82);plot(b)

#part c
c = ppois(0:30,7.3);plot(c)
#the y values represnt the limit that is reached which is seen by the asymptotic behavior.
#this happends becuase by definition the distributions represent the likely hood of the outcome and with more
#trials run (aka higher x values) the closer it gets to the theoretical limit

#3

#part a
punif(1,-3,5)-punif(-1,-3,5)

#part b
x<-seq(-2,4,.01)
density<- punif(x,-1,3)
plot(x,density)
#as x gets close to 3, the y values approach asymptote at y = 1, this is due to the
#the distribution being a generalization of the problem as a whole

#4

#part a
pexp(2,.5)-pexp(1,.5)

#part b
x <- seq(-1,2,.01)
density <- pexp(x,5)
plot(x,density)


