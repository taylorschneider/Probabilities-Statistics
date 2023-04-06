head(pedestrians)
pedestrians<-read.csv('pedestrians.csv', header=TRUE)
head(dat)
x<-dat$Hourly_Counts
# Mean :
mean (x)
# Variance :
var (x)
# Standard error :
sd(x)/sqrt(length(x))

mean(x)+c(-1 ,1)*1.96*sd(x)/sqrt(length(x))

#Waterfront City
wc.pedestrians<-pedestrians[pedestrians$Sensor_Name == "Waterfront City", ]
wc<-wc.pedestrians$Hourly_Counts
mean(wc)
mean(wc)+c(-1 ,1)*1.96*sd(wc)/sqrt(length(wc))

#Southern Cross Station
sc.pedestrians<-pedestrians[pedestrians$Sensor_Name == "Southern Cross Station",]
sc<-sc.pedestrians$Hourly_Counts
mean(sc)
mean(sc)+c(-1 ,1)*1.96*sd(sc)/sqrt(length(sc))

#The Arts Centre
ac.pedestrians<-pedestrians[pedestrians$Sensor_Name == "The Arts Centre",]
ac<-ac.pedestrians$Hourly_Counts
mean(ac)
mean(ac)+c(-1 ,1)*1.96*sd(ac)/sqrt(length(ac))


#2019
t<-pedestrians[pedestrians$Year == 2019,] 
t2<-t$Hourly_Counts
mean(t2)
mean(t2)+c(-1 ,1)*1.96*sd(t2)/sqrt(length(t2))

#2020
p<-pedestrians[pedestrians$Year == 2022,] 
p2<-p$Hourly_Counts
mean(p2)
mean(p2)+c(-1 ,1)*1.96*sd(p2)/sqrt(length(p2))
