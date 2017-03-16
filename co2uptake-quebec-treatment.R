quebec <- CO2$uptake[CO2$Type == "Quebec"]
quebec.ch <- quebec[CO2$Treatment[c(1,length(quebec))] == "chilled"]
quebec.nch <- quebec[CO2$Treatment[c(1,length(quebec))] == "nonchilled"]


g <- hist(quebec.ch, col=colors, main="CO2 uptake - Quebec chilled",xlab="CO2 uptake", ylab="Freq", ylim=c(0,12))
text(g$mid , g$counts+2, labels=g$counts)

g <- hist(quebec.nch, col=colors, main="CO2 uptake - Quebec nonchilled",xlab="CO2 uptake", ylab="Freq", ylim=c(0,12))
text(g$mid , g$counts+2, labels=g$counts)