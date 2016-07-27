#Homework problems 1
#1 Car prices
cvalue = c(3202,24233, 2893,4567,2452,3621,2513,18751,2005,3490,2247,4123)
plot(cvalue,xlab="car number",ylab="price of car",main="figure 1")
m=mean(cvalue);plot(cvalue,xlab="Car Number",ylab="Price of Car", main="Figure 3");abline(h=m,col="red");med=median(cvalue);abline(h=med,col="blue");
#written ans:I think that the median (blue line) is the best measure in this case. There are two points that are particularly clear outliars, and the median gives the best representation of this dataset taking this into account
#
#2 Rivers histograms
par(mfrow=c(2,2));hist(rivers,xlab="level of river",main="rivers break of 25",breaks=25);hist(rivers,xlab="level of river", main="rivers break of 50",breaks=50);hist(rivers,xlab="level of river", main="rivers with break of 75", breaks=75);hist(rivers,xlab="level of river",main="rivers with break of 100",breaks = 100);
#written ans:the more breaks that are included the more detail that the histogram shows. I think in this case, that the graph "river with break of 100" seems to be most effective graph
#
#3 Boxplot
summary(rivers)
par(mfrow=c(1,1));
boxplot(rivers,main="Boxplot of Vector rivers");
#written ans:The interquartile range is 370. The upper inner fence appears to be at roughly 1200 and the lower inner fence appears to be at roughly 150 
#
#4
wins=c(28,6,4,3,3,2,2)
lbls=c("KU","Bama","Tenn","Miss St.","Flo","Vandy","UGA");
par(mfrow=c(1,2));pie(wins,labels=lbls,main="Pie Chart of SEC Championships");barplot(wins,names.arg=lbls,main="Bar Chart of SEC Championships");
#The bar graph allows this data to be seen better due to the pie slices being indistinguishably close in size
