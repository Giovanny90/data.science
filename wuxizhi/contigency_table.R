w <- read.table("data/HEcolor.txt", header=T)
ftable(xtabs(Freq ~ ., w), row.vars=1, col.vars=2:3)
chisq.test(xtabs(Freq ~ Hair + Eye, w))
