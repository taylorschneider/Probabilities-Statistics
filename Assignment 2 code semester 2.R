#Q4a
dmystery <- function(x,a,b) {
  if (x>b) {a(x-b)^(-1-a)*exp(-(x-b)^-a)}
  else 0
}
X<-Vectorize(dmystery)

#Q4b
pmystery <- integrate(X, lower=0, upper=Inf, a=a, b=b)

#Q4c
emystery <- function(a,b) {
  x*dmystery(x,a,b)
}

#Q4d
vmystery <- function(a,b) {
  mean <- emystery()
  (x-mean)^2 *dmystery(x,a,b)
}

#4ei
emystery(3,6)
x<-vmystery(3,6)
sqrt(x)

#4eii
1-dmystery(7.2,a=3,b=6)

#4eiii
dmystery(6.5,3,6) - dmystery(7.9,3,6)

#4eiv

dmystery(8.1,3,6) + dmystery(9.3,3,6) / dmystery(8.1,3,6)

#4ev
1-dmystery(9.3,3,6) + dmystery(7.5,3,6)



