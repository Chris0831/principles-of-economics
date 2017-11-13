###############
## Homework 3 #
###############
## Course: Principles of Economics
## Jiaming Mao, Xiamen University 

# Problem 1
## 1.1
rm(list = ls()) 
p1 = 0:100
p2 = 50
I = 100
q1 = 1000 - 10*p1 + 5*p2 + 2*I
plot(p1,q1,type="l",col="brown",main="Own Price and Demand",ylim=c(0,1500))

## 1.2
p1 = 50
p2 = 0:100
I = 100
q1 = 1000 - 10*p1 + 5*p2 + 2*I
plot(p2,q1,type="l",col="brown",main="Price of Related Goods and Demand",ylim=c(0,1500))

## 1.3
p1 = 50
p2 = 50
I = 0:100
q1 = 1000 - 10*p1 + 5*p2 + 2*I
plot(I,q1,type="l",col="brown",main="Income and Demand",ylim=c(0,1500))

## 1.4
p2 = 50
I = 100
p1 = 0:(1000 + 5*p2 + 2*I)/10
q1 = 1000 - 10*p1 + 5*p2 + 2*I
plot(q1,p1,type="l",col="brown",main="Demand Curve")
p2 = 10
I = 100
p1 = 0:(1000 + 5*p2 + 2*I)/10
q1 = 1000 - 10*p1 + 5*p2 + 2*I
lines(q1,p1,col="cornflowerblue")
p2 = 50
I = 200
p1 = 0:(1000 + 5*p2 + 2*I)/10
q1 = 1000 - 10*p1 + 5*p2 + 2*I
lines(q1,p1,col="burlywood")
legend("topright", legend=c('p2=50,I=100','p2=10,I=100','p2=50,I=200'),lty=1,
       col=c("brown","cornflowerblue","burlywood")) 

# Problem 2
rm(list = ls()) 
data <- read.csv('CEdiary_201501.csv')
data <- data[data$FINCBEFX>0 & data$FOODTOT>0,]
income <- data$FINCBEFX
food <- data$FOODTOT
plot(income,food,col="cornflowerblue",ylab="food expenditure")
abline(lm(food~income),col="red")

# Problem 3
## 3.1
oildata <- read.csv('MCOILWTICO.csv')
corndata <- read.csv('PMAIZMTUSDM.csv')
oil <- ts(oildata[,2],start=c(1986,1),freq=12)
corn <- ts(corndata[,2],start=c(1986,1),freq=12)
plot(oil,xlab="",ylab="",col="darkorange",ylim=c(0,350))
lines(corn,col="cornflowerblue",ylim=c(0,350))
legend("topleft", legend=c('corn ($/mt)',' oil ($/ba)'),lty=1,col=c("cornflowerblue","darkorange")) 

## 3.3
plot(corn,oil,col="cornflowerblue")
abline(lm(oil~corn),col="red")

## 3.4
cor(corn,oil)

