v <- read.table("data/g100.txt", sep=",", header=TRUE)
library(TeachingDemos);
q <- v[1:10, 4:7]
row.names(q) <- v[1:10, 2]
faces(q, nrow=2, ncol=5)
stars(q, nrow=2, ncol=5)
