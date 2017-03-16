quebec <- CO2$uptake[CO2$Type == "Quebec"]

mis <- CO2$uptake[CO2$Type == "Mississippi"]

par(mfrow=c(2,1))

g <- hist(quebec, col=colors, main="CO2 uptake - Quebec plants",xlab="CO2 uptake", ylab="Freq", ylim=c(0,15))

text(g$mid , g$counts+2, labels=g$counts)

g <- hist(mis, col=colors, main="CO2 uptake - Mississippi plants",xlab="CO2 uptake", ylab="Freq", ylim=c(0,15))

text(g$mid , g$counts+2, labels=g$counts)