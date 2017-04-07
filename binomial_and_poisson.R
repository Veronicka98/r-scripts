#success = head
#no of trials, n = 60
#prob of head = 0.5

sum(dbinom(c(20,25,30), 60, 0.5))

pbinom(20, 60, 0.5)

sum(dbinom(c(20:30), 60, 0.5))

#mean = 7
ppois(5,7)

sum(dpois(c(4:16),7))

#success = defective item
#batch n = 100
#prob p = 0.01

sum(dbinom(c(5:100), 100,0.01))
sum(dpois(c(5:100), 100*0.01))

#average lambda = 40
# time n = 10
##find prob 6 in 1n

#40/10 = 4particles in 1 millisecond

dpois(6,4)

#n = 1000
#p = 0.01
dpois(9, 1000*0.01)
