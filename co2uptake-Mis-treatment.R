mis <- CO2$uptake[CO2$Type == "Mississippi"]
mis.ch <- mis[CO2$Treatment[c(1,length(mis))] == "chilled"]
mis.nch <- mis[CO2$Treatment[c(1,length(mis))] == "nonchilled"]

g <- hist(mis.ch, col=colors, main="CO2 uptake - Mis chilled",xlab="CO2 uptake", ylab="Freq", ylim=c(0,12))
text(g$mid , g$counts+2, labels=g$counts)

g <- hist(mis.nch, col=colors, main="CO2 uptake - Mis nonchilled",xlab="CO2 uptake", ylab="Freq", ylim=c(0,12))
text(g$mid , g$counts+2, labels=g$counts)