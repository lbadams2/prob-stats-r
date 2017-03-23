lambda = 1
data = rexp(10000,lambda)
binwidth = .3
bins = seq(min(data), max(data)+binwidth, binwidth)
hist(data, breaks=bins, col='green')

lambda = 1
data = rexp(10000,lambda)
data2 = rexp(10000,lambda)
meandata = (data + data2)/2
binwidth = .3
bins = seq(min(meandata), max(meandata)+binwidth, binwidth)
hist(meandata, breaks=bins, col='green')

ntrials = 10000
nexps = 50
x = rexp(ntrials*nexps, 1)
data = matrix(x, nrow = nexps, ncol = ntrials)
meandata = colMeans(data)
binwidth = .05
bins = seq(min(meandata), max(meandata)+binwidth, binwidth)
hist(meandata, breaks=bins, col='green', freq=FALSE)
z = seq(-6,6,.01)
lines(z,dnorm(z,1,sqrt(1/50)), col='red', lwd=3)
