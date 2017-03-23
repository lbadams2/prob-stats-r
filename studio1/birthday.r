source('C:\\R\\studio1\\colMatches.r')
ndays = 365
npeople = 20
ntrials = 10000
sizematch = 2 # 2 matching birthdays
maxpeople = 100

people = 1:maxpeople;
p = rep(0, length(people))
for (npeople in people)
{
  year = 1:ndays
  y =  sample(year, npeople*ntrials, replace=TRUE)
  trials = matrix(y, nrow=npeople, ncol=ntrials)
  w = colMatches(trials,sizematch)
  p[npeople] = mean(w)
}
plot(people,p,type='l', col='blue', lwd=2)
