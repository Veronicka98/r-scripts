mylist1 <- c()
mylist2 <- c()

runs <- 10000
for(i in 1:runs) {
  toss1 <- sample(c(1,2,3,4,5,6), 1, replace=TRUE, prob=NULL)
  mylist1<-c(mylist1, toss1)
  toss2 <- sample(c(1,2,3,4,5,6), 1, replace=TRUE, prob=NULL)
  mylist2<-c(mylist2, toss2)
}
mylist <- mylist1+mylist2

freq <- table(mylist)

labs <- paste(((g$counts/runs)*100), "%", sep="")

g <- hist(mylist,seq(0,13,1), col=colors, main="Freq's of tosses for 2 dice",xlab="Die", ylab="Freq", ylim=c(0,2000), labels =labs)

text(g$mid , g$counts-300, labels=g$counts)