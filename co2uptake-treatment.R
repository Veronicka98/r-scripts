ch <- CO2$uptake[CO2$Treatment == "chilled"]
nch <- CO2$uptake[CO2$Treatment == "nonchilled"]

par(mfrow = c(2,1))

g <- hist(ch, col=colors, main = "CO2 uptake for chilled plants", ylim = c(0,15), xlab="CO2 uptake", ylab="Freq")
text(g$mid , g$counts+2, labels=g$counts)

g <- hist(nch, col=colors, main="CO2 uptake - nonchilled",xlab="CO2 uptake", ylab="Freq", ylim=c(0,15)) 
text(g$mid , g$counts+2, labels=g$counts)