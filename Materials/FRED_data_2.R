# Suppose we want to download this data from FRED: https://fred.stlouisfed.org/series/CPIAUCNS
# Note the series name is CPIAUCNS, the frequency of the data is monthly
# Suppose we want to download the data from Jan. 2016 to Dec. 2016
# Two methods:

# Method 1: Quantmod
library(quantmod)
getSymbols('CPIAUCNS',src='FRED') #the downloaded data are stored in the variable CPIAUCNS
data1 <- CPIAUCNS["2016-01-01/2016-12-01"]
plot(data1)

# Method 2: fImport
library(fImport)
data3 <- fredSeries("CPIAUCNS",from="2016-01-01",to="2016-12-01")
plot(data3)
