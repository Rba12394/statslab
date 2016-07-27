q()
plot(austres,time,xlab="time",ylab="population(thousands)", main="Australain population v. time")
seq(1,length(austres),by=1)->time
plot(austres,time,xlab="time",ylab="population(thousands)", main="Australian population v. time")
#Assignment 2
#1
#part a
seq(1,length(austres),by=1)->time
time = 1:length(austres)
plt(time,austres);abline(lm(austres~time))
plot(time,austres);abline(lm(austres~time))
plot(time,austres,xlab="time",ylab="population(thousands)",main="Australian population v. time")
plot(time,austres,xlab="time",ylab="population(thousands)",main="Australian population v. time");abline(lm(austres~time))
#this is the way to do it!
#part b
cor(time,austres)
#because the correlation coefficient is so close to 1, it tells us that the relationship 
#part c
#move plot func to here
lm(austres~time)
#y=12917.41+52.36x
#part d
12917.41+52.36*
;
time
austres
#time of q1 95 is 96
12917.41+52.36*96
12917.41+52.36*136
cor(time,austres)^2
#about 99% of the total variation in the data is caused by the linear trend of the data
#question 2
#part a
cars$speed->x
cars$dist->y
cor(x,y)
#this tells us the the line is 80% linear
plot(x,y,xlab="speed",ylab="dist",main="cars");abline((lm(x~y));
plot(x,y,xlab="speed",ylab="dist",main="cars");abline(lm(x~y))
plot(x,y,xlab="speed",ylab="dist",main="cars");abline(lm(y~x));
plot(y,x,xlab="speed",ylab="dist",main="cars");abline(lm(y~x));
#the second one is correct
cars$speed
lm(y~x)
#y=3.932x-17.579
3.932(10)-17.579
(3.932*10)-17.579
(3.932*11)-17.579
#we expect the distance of stopping to increase by 3.932ft
(3.932*0)-17.579
#no this does not make sense. A reason for this odd value is that the data is not completely
#linear, so the line of best fit may not give an accurate estimation
cor(x,y)^2
#3
#order as they are written: 1,2,4,3
#this is becuase |r| close to 0 is almost no linearity and |r| close to 1 is linear
