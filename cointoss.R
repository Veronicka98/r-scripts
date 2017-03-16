list1 <- c()

list2 <- c()

runs <- 10000

for(i in 1:runs) {
  
  toss1 <- sample(c(0,1), 1, replace=TRUE, prob=NULL)
  
  list1<-c(list1, toss1)
  
  toss2 <- sample(c(0,1), 1, replace=TRUE, prob=NULL)
  
  list2<-c(list2, toss2)
  
}

mylist <- list1+list2

freq <- table(mylist)

labs <- paste((g$counts/runs*100), "%", sep="")

g <- hist(mylist,seq(-0.5,2.5,1), col=colors, main="Freq's of tosses for 2 coins"
          
          ,xlab="Coin toss", ylab="Freq", ylim=c(0,6000), labels =labs)

text(g$mid , g$counts-300, labels=g$counts)