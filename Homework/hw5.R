###############
## Homework 5 #
###############
## Course: Principles of Economics
## Jiaming Mao, Xiamen University 

# Problem 5
## 5.1
rm(list = ls()) 
p = 100:1000
q = 10000/sqrt(p)
plot(p,q,type="l")

## 5.2
rm(list = ls()) 
data <- read.csv('Demand_data.csv')
p = data$p
q = data$q
plot(p,q,col="cornflowerblue")

## 5.3
plot(log(p),log(q),col="cornflowerblue")
abline(lm(log(q)~log(p)),col="red")

## 5.4
lm(log(q)~log(p))



