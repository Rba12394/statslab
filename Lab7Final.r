#Lab 7
#----------------------------
#Question 1

#part 1a
expvalues <- rexp(30,3)
#E[X] = 1/p
#so p = 1/E[X] = 1/mean(expvalues)
1/mean(expvalues)
#This is relatively close to the actual value of lambda (within ~10%)

#part 1b
x <- c(0,3,3,4,7,0,1,3,1,9,8,2,0,5,1,2,2,0)
#E[X] = (1-p)/p
#so p = 1/(E[X]+1) = 1/(mean(x)+1)
1/(mean(x)+1)

#part 1c
expval2 <- c(3.13,4.26,3.62,3.89,3.31,4.26,3.6,4.74,4.44,3.38,3.41,4.6,4.2,5.19,3.72)
#mu1 = E[X] = (a+b)/2
#mu2-mu1^2 = Var[X] = ((b-a)^2)/12
#so mu2 = (((b-a)^2)/12) + mu1^2
mu1 = mean(expval2)
mu2 = sum(expval2^2)/length(expval2)
#a = E(x) - sqrt(3Var(X))
#so: a = mu1 - sqrt(3*(mu2-mu1^2))
#b = E(x) + sqrt(3Var(x))
#so: b = mu1 + sqrt(3*(mu2-mu1^2))
a = mu1 - sqrt(3*(mu2-mu1^2))
b = mu1 + sqrt(3*(mu2-mu1^2))
#-----------------------------

#Question 2

#part 2a
Lexpo = function(lambda) {y = 1
for(i in 1:30)
{y = 10*y*lambda*exp(-lambda*expvalues[i])}
return(-y)}
x1 = seq(0,5,0.1)
plot(x1,Lexpo(x1))
optimize(Lexpo, c(3,4))

#part 2b
LGeom = function(p) { y = 1
for(i in 1:15){
y = 10*y*((1-p)^x[i])*p}
return(-y)}
x2 = seq(0,1,.01)
plot(x2, LGeom(x2))
optimize(LGeom, c(0,1))

#2c
norm <- c(-1.60,-0.47,2.00,4.13,0.12,8.09,2.32,0.76,2.187,-0.25,4.94,2.76,1.32,1.51,2.99,1.29,-0.15,0.20,-2.26,1.3)
Lnorm = function(param) { y = 1
for(i in 1:20)
{y = y*10*dnorm(norm[i],param[1],param[2])}
return(-y)}
optim(c(1.5,2.3), Lnorm)