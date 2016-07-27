#Homework problems 2

#Question 1:

#part a
time = 1:length(austres)

#part b
cor(time,austres)
#Because the correlation coefficient is close to 1, it tells us that the relationship is almost completely linear

#part c
plot(time,austres,xlab="time",ylab="population(thousands)",main="Australian population v. time");abline(lm(austres~time))
lm(austres~time)
#equation of line: y=52.36x+12917.41

#part d
#q1 in 1995:
(52.36*96)+12917.41
#q1 of 2005:
(52.36*136)+12917.41

#part e
cor(time,austres)^2
#about 99% of the total variation in the data is caused by the linear trend of the data

#Question 2:

#part a
cars$speed->x
cars$dist->y
cor(x,y)
#this tells us the the line is 80% linear

#part b
plot(x,y,xlab="speed",ylab="dist",main="cars");abline(lm(y~x))

#part c
#we expect the distance of stopping to increase by 3.932ft

#part d
(3.932*0)-17.579
#no this does not make sense. A reason for this odd value is that the data is not completely
#linear, so the line of best fit may not give an accurate estimation

#part e
cor(x,y)^2
#This tells us that the linear trend of this data is not a particularly good estimator of values

#Question 3:

#order as they are written: 1,2,4,3
#this is becuase |r| close to 0 is almost no linearity and |r| close to 1 is linear
