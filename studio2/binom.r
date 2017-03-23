ntosses = 8
ntrials = 1000
phead = .6
x = rbinom(ntosses*ntrials, 1, .6) # x is either 1 or 0 - from 2nd arg
# fills out columns first, 8 in each column which is 1 trial
trials = matrix(x, nrow=ntosses, ncol = ntrials)
y = colSums(trials)
mean(y == 6)
mean(y <= 6)

choose(ntosses, 6)*phead^6*(1-phead)^(ntosses-6) # P(X = 6)
dbinom(6, 8, .6) # P(X = 6), can pass vector as first arg
pbinom(6, 8, .6) # P(X <= 6)

x = 0:10
plot(x, x^2-7*x)

payoff = x^2-7*x
probabilities = dbinom(x, 10, .6)
exValue = sum(probabilities*payoff)

phead = .6
ntosses = 10
ntrials = 1000
trials = rbinom(ntrials, ntosses, phead)
payoffs = trials^2 - 7*trials
mean(payoffs)