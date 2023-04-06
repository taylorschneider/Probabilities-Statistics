#task 1

qt(.975, 58.6)
pt(1.366, 58.6)


#Task 2
prop.test(c(15,17), c(108,110))

#Task 3

dat<-read.csv("pedestrians.csv", header=TRUE)
dat1<-dat[dat$Year=='2019',]
dat2<-dat[dat$Year=='2022',]

mu1<-dat1$Hourly_Counts
mu2<-dat2$Hourly_Counts

t.test(mu1 , mu2)

#task 4
dot<-read.csv("CPUs.csv", header=TRUE)

cores<-dot$cores
threads<-dot$threads
baseclock<-dot$baseClock
turboclock<-dot$turboClock
single<-dot$singleScore
multi<-dot$multiScore

lm.model<-lm(single ~ multi, data=dot)
summary(lm.model)

lm.model2<-lm(single ~ cores+threads+baseclock+turboclock, data=dot)
summary(lm.model2)

plot(lm.model2,which=1:2)

lm.model3<-lm(single ~ cores, data=dot)
predict(lm.model3, dot, interval="prediction")
