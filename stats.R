mylist <- c()
for (i in 1:5) {
  for(i in 1:1000) {
    toss <- sample(c(0,1), 1, replace=TRUE, prob=NULL)
    mylist<-c(mylist, toss)
  }
}
mylist

