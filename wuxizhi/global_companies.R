v = read.table("data/g100.txt", sep=',', header=TRUE)
plot(v$Assets, v$Sales, pch=1, col=1, xlab="Assets (Billion $)",
     ylab="Sales (Billion $)", ylim=c(0, 600), xlim=c(-100, 3000),
     cex=log(v$Profits))
title("Global 100 Company's Assets, Sales and log Profits (size of points)")
identify(v$Assets, v$Sales, labels=v$Company)
