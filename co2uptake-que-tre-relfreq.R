que <- CO2$uptake[CO2$Type == "Quebec"]
que.ch <- que[CO2$Treatment[c(1,length(que))] == "chilled"]
que.nch <- que[CO2$Treatment[c(1,length(que))] == "nonchilled"]

que.ch.cut <- cut(que.ch, breaks, right=FALSE)
que.nch.cut <- cut(que.nch, breaks, right=FALSE)

que.ch.freq <- table(que.ch.cut)
que.nch.freq <- table(que.nch.cut)

que.ch.cumfreq = c(0,cumsum(que.ch.freq))
que.nch.cumfreq = c(0,cumsum(que.nch.freq))

que.ch.cumrelfreq <- que.ch.cumfreq / length(que.ch)
que.nch.cumrelfreq <- que.nch.cumfreq / length(que.nch)

plot(breaks, que.ch.cumrelfreq, main="CO2 uptake distribution - que chilled", xlab="CO2 uptake", ylab="Cumulative Rel Freq")

plot(breaks, que.nch.cumrelfreq, main="CO2 uptake distribution - que nonchilled", xlab="CO2 uptake", ylab="Cumulative Rel Freq")
