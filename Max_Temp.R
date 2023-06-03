

x=read.table("max_temp.txt",header = T,sep='\t')
x
x[,3]

plot(x[,3])
maxT=ts(x[,3],frequency = 12,start = c(1953,1))
plot(maxT)
install.packages("forecast")
library(forecast)
NMaxT=tsclean(maxT)
plot(NmaxT)
length(NMaxT)
827**.7 #

traindata=NMaxT[1:579]
testdata=NMaxT[580:827]
plot(traindata)
MaxTtrain=ts(traindata,frequency=12,start=c(1953,1))
plot(MaxTtrain)
MaxTtest=ts(testdata,frequency = 12,start = c(2004,2020))
plot(MaxTtest)


## using package
install.packages("tseries")
library(tseries)
adf.test(MaxTtrain)##p-value=0.01, stationary
kpss.test(MaxTtrain)##p-value
acf.test(MaxTtrain)
pacf.test(MaxTtrain)
