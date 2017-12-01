###############
## Homework 6 #
###############
## Course: Principles of Economics
## Jiaming Mao, Xiamen University 

rm(list = ls()) #clears existing variables

# Problem 5
## 5.3
tau = seq(0,1,0.01) #generate a sequence that goes from 0 to 1 at increment 0.01
Wb = 50/(5-tau)
Wf = (1-tau)*Wb
plot(tau,Wb,type="l",ylim=c(0,14),col="cornflowerblue",xlab="Tax Rate",ylab="Wage")
lines(tau,Wf,col="darkorange")
legend("topleft", legend=c('before tax','after tax'),lty=1,
       col=c("cornflowerblue","darkorange"),bty="n") 

## 5.5
Q = (1-tau)*100/(5-tau)
TR = tau*Wb*Q
plot(tau,TR,type="l",col="cornflowerblue",main="Laffer Curve",xlab="Tax Rate",ylab="Tax Revenue")

## 5.6
TRfunction <- function(x) x*(1-x)*5000/(5-x)^2 #tax revenue as a function of tax rate
z <- function(x) -TRfunction(x) #since we want to maximize TRfunction, we use optim to minimize -TRfunction
result <- optim(0.5,TRfunction,lower=0,upper=1) 
tau_star = result$par 
tau_star

## 5.8
dwl = 0.5*(Wb-Wf)*(20-Q)
plot(tau,dwl,type="l",col="cornflowerblue",xlab="Tax Rate",ylab="Deadweight Loss")

## 5.9 Reagan Tax Cut
year = 1977:1986
taxdata = read.csv('FederalTaxReceipts19771986.csv')
taxrev = taxdata[,2]
GDPdata = read.csv('GDPDeflator19771986.csv') 
deflator = GDPdata[,2]
realtaxrev = taxrev/deflator
plot(year,realtaxrev,type="l",ylab="Tax Revenue (Billions of 2010 Dollars)",col="cornflowerblue")

## 5.10 Bush Tax Cut
year = 1997:2006
taxdata = read.csv('FederalTaxReceipts19972006.csv')
taxrev = taxdata[,2]
GDPdata = read.csv('GDPDeflator19972006.csv') 
deflator = GDPdata[,2]
realtaxrev = taxrev/deflator
plot(year,realtaxrev,type="l",ylab="Tax Revenue (Billions of 2010 Dollars)",col="cornflowerblue")
