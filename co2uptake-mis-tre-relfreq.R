mis <- CO2$uptake[CO2$Type == "Mississippi"]
mis.ch <- mis[CO2$Treatment[c(1,length(mis))] == "chilled"]
mis.nch <- mis[CO2$Treatment[c(1,length(mis))] == "nonchilled"]

mis.ch.cut <- cut(mis.ch, breaks, right=FALSE)
mis.nch.cut <- cut(mis.nch, breaks, right=FALSE)

mis.ch.freq <- table(mis.ch.cut)
mis.nch.freq <- table(mis.nch.cut)

mis.ch.cumfreq = c(0,cumsum(mis.ch.freq))
mis.nch.cumfreq = c(0,cumsum(mis.nch.freq))

mis.ch.cumrelfreq <- mis.ch.cumfreq / length(mis.ch)
mis.nch.cumrelfreq <- mis.nch.cumfreq / length(mis.nch)

plot(breaks, mis.ch.cumrelfreq, main="CO2 uptake distribution - Mis chilled", xlab="CO2 uptake", ylab="Cumulative Rel Freq")

plot(breaks, mis.nch.cumrelfreq, main="CO2 uptake distribution - Mis nonchilled", xlab="CO2 uptake", ylab="Cumulative Rel Freq")
