#Homework Problems 4

#Question 1
a = 1:1000
for(i in 1:1000){h=sample(1:52,5,replace=FALSE);a[i]=length(h[h<=16])}
length(a[a>0])
830/1000
#answer: probability of having atleast one of the face cards is: .83 (when i ran the simulation)
#part 1a
length(a[a==2])
334/1000
#answer: probablilty of getting exactly 2 of these cards is: .334 (when i ran the simulation)
#part 1b
length(a[a>=4])
25/1000
#answer: probability of getting 4 or more of these cards is: .025 (when i ran the simulation)
#part 1c
length(a[a==0])
170/1000
#answer: probablity of getting 0 of these cards is: .17 (when i ran the simulation)

#Question 2
x=runif(1000,-1,1);y=runif(1000,-1,1);plot(x,y)
curve(x^2,col="blue",lwd=5,add=TRUE)
z=x^2
z=y-x^2
length(z[z<0])
665/1000
#answer: .665 (when i ran the simulation)
#answer: the more points generated, the closer it is to the actual value

#Question 3:
MonteCarlo = function(f,a,b,numpoints){x=runif(numpoints,a,b);
sum=0;
for(i in 1:numpoints){
sum=sum+f(x[i])}
z=(b-a)*sum/numpoints;
return(z)}

f=function(x){return(x^3)}

MonteCarlo(f,0,1,5000)
#answer: .2478909 (when i ran the simulation)

#Question 4:
#part 4a
f=function(x){return(x^2)}
MonteCarlo(f,-1,1,1000)
#answer: .6839339 (when i ran the simulation)
#part 4b
f=function(x){return(exp(1)^-(x^2))}
MonteCarlo(f,0,1,5000)
#answer: .7435344 (when i ran the simulation)
#part 4c
f=function(x){return(sin(x))}
MonteCarlo(f,-pi,pi,5000)
#answer: -0.01975122 (when i ran the simulation), answer should be 0 

