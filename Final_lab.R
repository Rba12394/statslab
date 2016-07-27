#Final Assignment

##-----------
#Question 1
##-----------

data()
##part_a
time<-seq(1:length(AirPassengers))

##part_b
cor(time, AirPassengers)

#Explain how the correlation coeff says about the linearity of the data

##part_c
plot(time,AirPassengers,xlab="time",ylab="Air Passengers",main="time v passengers")
lm(AirPassengers~time)


##part_d
#plug in 1962 into the equation of line of best fit

##part_e
cor(time,AirPassengers)^2
#Explain how the correlation coeff^2 says about the linearity of the data
#"When r2 is close to 1, the linear variation accounts for most of the total variation of the data"

##part_f
boxplot(AirPassengers, main="Boxplot of AirPassengers")

##part_g
#visually guess values

##part_h
summary(AirPassengers)

##-----------
#Question 2
##-----------

x = seq(1,25,1)
y = c(3.14,0.785,0.349,0.1963,0.1256,0.087,0.064,0.049,0.0387,0.0314,0.026,0.022,0.0186,
0.016,0.0140,0.0122,0.0108,0.0097,0.0087,0.00785,0.00712,0.0065,0.006,0.00545,0.005)

x1=log(x)
y1=log(y)

linreg=lm(y1~x1)
s=coef(linreg)
#c
s[1]
#d
s[2]

plot(x1,y1)

##-----------
#Question 3
##-----------

x = seq(0.1,1,0.1)
y = c(6.107014,7.459123,9.110594,11.127705,13.591409,16.600585,20.276000,24.765162,30.248237,36.945280)

##----------
#Question 4
##----------

#y=3x^2+x on interval [0,1]
x = runif(1000,0,1); y = runif(1000,0,4); plot(x,y);
curve(((3*x^2)+x),col="blue",lwd=5,add=TRUE);
z=y-((3*x^2)+x)
c=z[z>0];c
length(c)

##-----------
#Question 5
##-----------

a = 1:500
for(i in 1:500){h=sample(1:10,3,replace=TRUE);a[i]=length(h[h<=1])}
length(a[a>0])/500
#.274 in the simulation that i ran

##-----------
#Question 6
##-----------

#part_a
x <- c(15,9,12,17,10,13,18,14,13,14,13,14,15,9,13)
#mu1 = E[X]= np
#mu2-mu1^2 = Var[X] = np(1-p)
#so mu2 = np(1-p)-(np)^2

#n = mu1^2 / (mu1-mu2+mu1^2)
#p = (mu1 - mu2 + mu1^2)/mu1

mu1 = mean(x)
mu2 = sum(x^2)/length(x)

n = mu1^2/ (mu1 - mu2 + mu1^2)
p = (mu1 - mu2 + mu1^2)/mu1
n
p

#part_b
x <- c(3,2,8,3,3,2,10,4,4,5,3,5,6,4,3,3,2,5,3,3,0,3,1,4,3,5,8,0,5,3,5,4,4,7,6,6,5,8,2,4)
Lpoisson = function(lambda) {y=1
for(i in 1:length(x))
{ y = y*10*lambda^x[i]*exp(-lambda)/factorial(x[i])}
return(-y)
}

x1 = seq(0,10,0.1)
plot(x1,Lpoisson(x1))

##-----------
#Question 7
##-----------

# x:= number of tails seen b4 heads
# p:= probability of landing on heads = .5
# X ~ geom(p)
# assume that prior distribution on P is unif(0,1)

#Create a function that takes inputs (p,x) as a vector an

##------------
#Question 8
##------------

x = c(2.65856096, 0.78861940, 10.71090028, 2.43423880, 6.06530714, 1.29140150, 0.66488312, 1.44623475,
0.92349628 , 0.72383143, 1.09486783, 3.50138118, 8.12106273, 13.82321558, 0.24289000, 0.57846732,
5.27376890, 8.71319296, 2.82174569, 0.23055765, 0.61221320, 1.48062873, 4.61857115, 3.67150074,
0.64467215, 0.08102496, 0.19837911, 13.56160871, 5.81654394, 1.70477258, 0.28728035, 0.66396152,
4.56620718, 1.42539149, 0.17335929, 0.15383689, 1.17873773, 1.52527993, 0.14664363, 5.38921685,
7.31269408, 8.76200643, 7.18516486 , 2.23187230 , 0.52092445, 1.92955872, 1.00183190, 5.94689889,
10.94151186, 1.14831194)

#part_a
#mu1 = E[X] = 1/lambda
#so lambda = 1/E[X]
lambda = 1/mean(x)
lambda

#part_b
xsorted<-sort(x)
len = length(xsorted);
t <- qexp(seq(1/len,(len)/len,1/len), lambda)
plot(t,xsorted,xlab="Normal Distribution Quantiles", 
ylab = "Observed Ordered Values", main="Q-Q\ Plot, X' vs. Exponential");abline(a=0,b=1)

#part_c
xprimecdf = function(t){a = 1 :length(t);
for(i in 1:length(x)){a[i]=length(x[x<=t[i]])/length(x)};
return(a)}

plot(x, xprimecdf(x))

#-----------
#Question 9
#-----------

#Poisson distribution

#part_a
x <- c(1,2,5,12,4,6,6,3,1,4,2,10,11,8,2,6,1,5,3,5,2,12,9,10,8,2,5,4,3,7)
#lambda = E[X] = mean(x)
lambda = mean(x)
lambda


